package androidx.viewpager2.adapter;

import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Parcelable;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import androidx.annotation.CallSuper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.OptIn;
import androidx.annotation.RequiresOptIn;
import androidx.collection.ArraySet;
import androidx.collection.LongSparseArray;
import androidx.core.util.Preconditions;
import androidx.core.view.ViewCompat;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.lifecycle.LifecycleOwner;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
/* loaded from: classes2.dex */
public abstract class FragmentStateAdapter extends RecyclerView.Adapter<FragmentViewHolder> implements StatefulAdapter {
    private static final long GRACE_WINDOW_TIME_MS = 10000;
    private static final String KEY_PREFIX_FRAGMENT = "f#";
    private static final String KEY_PREFIX_STATE = "s#";
    FragmentEventDispatcher mFragmentEventDispatcher;
    final FragmentManager mFragmentManager;
    private FragmentMaxLifecycleEnforcer mFragmentMaxLifecycleEnforcer;
    final LongSparseArray<Fragment> mFragments;
    private boolean mHasStaleFragments;
    boolean mIsInGracePeriod;
    private final LongSparseArray<Integer> mItemIdToViewHolder;
    final Lifecycle mLifecycle;
    private final LongSparseArray<Fragment.SavedState> mSavedStates;

    /* loaded from: classes2.dex */
    private static abstract class DataSetChangeObserver extends RecyclerView.AdapterDataObserver {
        private DataSetChangeObserver() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public abstract void onChanged();

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public final void onItemRangeChanged(int i10, int i11) {
            onChanged();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public final void onItemRangeInserted(int i10, int i11) {
            onChanged();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public final void onItemRangeMoved(int i10, int i11, int i12) {
            onChanged();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public final void onItemRangeRemoved(int i10, int i11) {
            onChanged();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public final void onItemRangeChanged(int i10, int i11, @Nullable Object obj) {
            onChanged();
        }
    }

    @RequiresOptIn(level = RequiresOptIn.Level.WARNING)
    /* loaded from: classes2.dex */
    public @interface ExperimentalFragmentStateAdapterApi {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class FragmentEventDispatcher {
        private List<FragmentTransactionCallback> mCallbacks = new CopyOnWriteArrayList();

        FragmentEventDispatcher() {
        }

        public List<FragmentTransactionCallback.OnPostEventListener> dispatchMaxLifecyclePreUpdated(Fragment fragment, Lifecycle.State state) {
            ArrayList arrayList = new ArrayList();
            for (FragmentTransactionCallback fragmentTransactionCallback : this.mCallbacks) {
                arrayList.add(fragmentTransactionCallback.onFragmentMaxLifecyclePreUpdated(fragment, state));
            }
            return arrayList;
        }

        public void dispatchPostEvents(List<FragmentTransactionCallback.OnPostEventListener> list) {
            for (FragmentTransactionCallback.OnPostEventListener onPostEventListener : list) {
                onPostEventListener.onPost();
            }
        }

        public List<FragmentTransactionCallback.OnPostEventListener> dispatchPreAdded(Fragment fragment) {
            ArrayList arrayList = new ArrayList();
            for (FragmentTransactionCallback fragmentTransactionCallback : this.mCallbacks) {
                arrayList.add(fragmentTransactionCallback.onFragmentPreAdded(fragment));
            }
            return arrayList;
        }

        public List<FragmentTransactionCallback.OnPostEventListener> dispatchPreRemoved(Fragment fragment) {
            ArrayList arrayList = new ArrayList();
            for (FragmentTransactionCallback fragmentTransactionCallback : this.mCallbacks) {
                arrayList.add(fragmentTransactionCallback.onFragmentPreRemoved(fragment));
            }
            return arrayList;
        }

        @OptIn(markerClass = {ExperimentalFragmentStateAdapterApi.class})
        public List<FragmentTransactionCallback.OnPostEventListener> dispatchPreSavedInstanceState(Fragment fragment) {
            ArrayList arrayList = new ArrayList();
            for (FragmentTransactionCallback fragmentTransactionCallback : this.mCallbacks) {
                arrayList.add(fragmentTransactionCallback.onFragmentPreSavedInstanceState(fragment));
            }
            return arrayList;
        }

        public void registerCallback(FragmentTransactionCallback fragmentTransactionCallback) {
            this.mCallbacks.add(fragmentTransactionCallback);
        }

        public void unregisterCallback(FragmentTransactionCallback fragmentTransactionCallback) {
            this.mCallbacks.remove(fragmentTransactionCallback);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class FragmentMaxLifecycleEnforcer {
        private RecyclerView.AdapterDataObserver mDataObserver;
        private LifecycleEventObserver mLifecycleObserver;
        private ViewPager2.OnPageChangeCallback mPageChangeCallback;
        private long mPrimaryItemId = -1;
        private ViewPager2 mViewPager;

        FragmentMaxLifecycleEnforcer() {
        }

        @NonNull
        private ViewPager2 inferViewPager(@NonNull RecyclerView recyclerView) {
            ViewParent parent = recyclerView.getParent();
            if (parent instanceof ViewPager2) {
                return (ViewPager2) parent;
            }
            throw new IllegalStateException("Expected ViewPager2 instance. Got: " + parent);
        }

        void register(@NonNull RecyclerView recyclerView) {
            this.mViewPager = inferViewPager(recyclerView);
            ViewPager2.OnPageChangeCallback onPageChangeCallback = new ViewPager2.OnPageChangeCallback() { // from class: androidx.viewpager2.adapter.FragmentStateAdapter.FragmentMaxLifecycleEnforcer.1
                @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
                public void onPageScrollStateChanged(int i10) {
                    FragmentMaxLifecycleEnforcer.this.updateFragmentMaxLifecycle(false);
                }

                @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
                public void onPageSelected(int i10) {
                    FragmentMaxLifecycleEnforcer.this.updateFragmentMaxLifecycle(false);
                }
            };
            this.mPageChangeCallback = onPageChangeCallback;
            this.mViewPager.registerOnPageChangeCallback(onPageChangeCallback);
            DataSetChangeObserver dataSetChangeObserver = new DataSetChangeObserver() { // from class: androidx.viewpager2.adapter.FragmentStateAdapter.FragmentMaxLifecycleEnforcer.2
                @Override // androidx.viewpager2.adapter.FragmentStateAdapter.DataSetChangeObserver, androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
                public void onChanged() {
                    FragmentMaxLifecycleEnforcer.this.updateFragmentMaxLifecycle(true);
                }
            };
            this.mDataObserver = dataSetChangeObserver;
            FragmentStateAdapter.this.registerAdapterDataObserver(dataSetChangeObserver);
            LifecycleEventObserver lifecycleEventObserver = new LifecycleEventObserver() { // from class: androidx.viewpager2.adapter.FragmentStateAdapter.FragmentMaxLifecycleEnforcer.3
                @Override // androidx.lifecycle.LifecycleEventObserver
                public void onStateChanged(@NonNull LifecycleOwner lifecycleOwner, @NonNull Lifecycle.Event event) {
                    FragmentMaxLifecycleEnforcer.this.updateFragmentMaxLifecycle(false);
                }
            };
            this.mLifecycleObserver = lifecycleEventObserver;
            FragmentStateAdapter.this.mLifecycle.addObserver(lifecycleEventObserver);
        }

        void unregister(@NonNull RecyclerView recyclerView) {
            inferViewPager(recyclerView).unregisterOnPageChangeCallback(this.mPageChangeCallback);
            FragmentStateAdapter.this.unregisterAdapterDataObserver(this.mDataObserver);
            FragmentStateAdapter.this.mLifecycle.removeObserver(this.mLifecycleObserver);
            this.mViewPager = null;
        }

        void updateFragmentMaxLifecycle(boolean z10) {
            int currentItem;
            Fragment fragment;
            boolean z11;
            if (FragmentStateAdapter.this.shouldDelayFragmentTransactions() || this.mViewPager.getScrollState() != 0 || FragmentStateAdapter.this.mFragments.isEmpty() || FragmentStateAdapter.this.getItemCount() == 0 || (currentItem = this.mViewPager.getCurrentItem()) >= FragmentStateAdapter.this.getItemCount()) {
                return;
            }
            long itemId = FragmentStateAdapter.this.getItemId(currentItem);
            if ((itemId != this.mPrimaryItemId || z10) && (fragment = FragmentStateAdapter.this.mFragments.get(itemId)) != null && fragment.isAdded()) {
                this.mPrimaryItemId = itemId;
                FragmentTransaction beginTransaction = FragmentStateAdapter.this.mFragmentManager.beginTransaction();
                ArrayList<List<FragmentTransactionCallback.OnPostEventListener>> arrayList = new ArrayList();
                Fragment fragment2 = null;
                for (int i10 = 0; i10 < FragmentStateAdapter.this.mFragments.size(); i10++) {
                    long keyAt = FragmentStateAdapter.this.mFragments.keyAt(i10);
                    Fragment valueAt = FragmentStateAdapter.this.mFragments.valueAt(i10);
                    if (valueAt.isAdded()) {
                        if (keyAt != this.mPrimaryItemId) {
                            Lifecycle.State state = Lifecycle.State.STARTED;
                            beginTransaction.setMaxLifecycle(valueAt, state);
                            arrayList.add(FragmentStateAdapter.this.mFragmentEventDispatcher.dispatchMaxLifecyclePreUpdated(valueAt, state));
                        } else {
                            fragment2 = valueAt;
                        }
                        if (keyAt == this.mPrimaryItemId) {
                            z11 = true;
                        } else {
                            z11 = false;
                        }
                        valueAt.setMenuVisibility(z11);
                    }
                }
                if (fragment2 != null) {
                    Lifecycle.State state2 = Lifecycle.State.RESUMED;
                    beginTransaction.setMaxLifecycle(fragment2, state2);
                    arrayList.add(FragmentStateAdapter.this.mFragmentEventDispatcher.dispatchMaxLifecyclePreUpdated(fragment2, state2));
                }
                if (!beginTransaction.isEmpty()) {
                    beginTransaction.commitNow();
                    Collections.reverse(arrayList);
                    for (List<FragmentTransactionCallback.OnPostEventListener> list : arrayList) {
                        FragmentStateAdapter.this.mFragmentEventDispatcher.dispatchPostEvents(list);
                    }
                }
            }
        }
    }

    /* loaded from: classes2.dex */
    public static abstract class FragmentTransactionCallback {
        @NonNull
        private static final OnPostEventListener NO_OP = new OnPostEventListener() { // from class: androidx.viewpager2.adapter.FragmentStateAdapter.FragmentTransactionCallback.1
            @Override // androidx.viewpager2.adapter.FragmentStateAdapter.FragmentTransactionCallback.OnPostEventListener
            public void onPost() {
            }
        };

        /* loaded from: classes2.dex */
        public interface OnPostEventListener {
            void onPost();
        }

        @NonNull
        public OnPostEventListener onFragmentMaxLifecyclePreUpdated(@NonNull Fragment fragment, @NonNull Lifecycle.State state) {
            return NO_OP;
        }

        @NonNull
        public OnPostEventListener onFragmentPreAdded(@NonNull Fragment fragment) {
            return NO_OP;
        }

        @NonNull
        public OnPostEventListener onFragmentPreRemoved(@NonNull Fragment fragment) {
            return NO_OP;
        }

        @NonNull
        @ExperimentalFragmentStateAdapterApi
        public OnPostEventListener onFragmentPreSavedInstanceState(@NonNull Fragment fragment) {
            return NO_OP;
        }
    }

    public FragmentStateAdapter(@NonNull FragmentActivity fragmentActivity) {
        this(fragmentActivity.getSupportFragmentManager(), fragmentActivity.getLifecycle());
    }

    @NonNull
    private static String createKey(@NonNull String str, long j10) {
        return str + j10;
    }

    private void ensureFragment(int i10) {
        long itemId = getItemId(i10);
        if (!this.mFragments.containsKey(itemId)) {
            Fragment createFragment = createFragment(i10);
            createFragment.setInitialSavedState(this.mSavedStates.get(itemId));
            this.mFragments.put(itemId, createFragment);
        }
    }

    private boolean isFragmentViewBound(long j10) {
        View view;
        if (this.mItemIdToViewHolder.containsKey(j10)) {
            return true;
        }
        Fragment fragment = this.mFragments.get(j10);
        if (fragment != null && (view = fragment.getView()) != null && view.getParent() != null) {
            return true;
        }
        return false;
    }

    private static boolean isValidKey(@NonNull String str, @NonNull String str2) {
        if (str.startsWith(str2) && str.length() > str2.length()) {
            return true;
        }
        return false;
    }

    private Long itemForViewHolder(int i10) {
        Long l10 = null;
        for (int i11 = 0; i11 < this.mItemIdToViewHolder.size(); i11++) {
            if (this.mItemIdToViewHolder.valueAt(i11).intValue() == i10) {
                if (l10 == null) {
                    l10 = Long.valueOf(this.mItemIdToViewHolder.keyAt(i11));
                } else {
                    throw new IllegalStateException("Design assumption violated: a ViewHolder can only be bound to one item at a time.");
                }
            }
        }
        return l10;
    }

    private static long parseIdFromKey(@NonNull String str, @NonNull String str2) {
        return Long.parseLong(str.substring(str2.length()));
    }

    private void removeFragment(long j10) {
        ViewParent parent;
        Fragment fragment = this.mFragments.get(j10);
        if (fragment == null) {
            return;
        }
        if (fragment.getView() != null && (parent = fragment.getView().getParent()) != null) {
            ((FrameLayout) parent).removeAllViews();
        }
        if (!containsItem(j10)) {
            this.mSavedStates.remove(j10);
        }
        if (!fragment.isAdded()) {
            this.mFragments.remove(j10);
        } else if (shouldDelayFragmentTransactions()) {
            this.mHasStaleFragments = true;
        } else {
            if (fragment.isAdded() && containsItem(j10)) {
                List<FragmentTransactionCallback.OnPostEventListener> dispatchPreSavedInstanceState = this.mFragmentEventDispatcher.dispatchPreSavedInstanceState(fragment);
                Fragment.SavedState saveFragmentInstanceState = this.mFragmentManager.saveFragmentInstanceState(fragment);
                this.mFragmentEventDispatcher.dispatchPostEvents(dispatchPreSavedInstanceState);
                this.mSavedStates.put(j10, saveFragmentInstanceState);
            }
            List<FragmentTransactionCallback.OnPostEventListener> dispatchPreRemoved = this.mFragmentEventDispatcher.dispatchPreRemoved(fragment);
            try {
                this.mFragmentManager.beginTransaction().remove(fragment).commitNow();
                this.mFragments.remove(j10);
            } finally {
                this.mFragmentEventDispatcher.dispatchPostEvents(dispatchPreRemoved);
            }
        }
    }

    private void scheduleGracePeriodEnd() {
        final Handler handler = new Handler(Looper.getMainLooper());
        final Runnable runnable = new Runnable() { // from class: androidx.viewpager2.adapter.FragmentStateAdapter.3
            @Override // java.lang.Runnable
            public void run() {
                FragmentStateAdapter fragmentStateAdapter = FragmentStateAdapter.this;
                fragmentStateAdapter.mIsInGracePeriod = false;
                fragmentStateAdapter.gcFragments();
            }
        };
        this.mLifecycle.addObserver(new LifecycleEventObserver() { // from class: androidx.viewpager2.adapter.FragmentStateAdapter.4
            @Override // androidx.lifecycle.LifecycleEventObserver
            public void onStateChanged(@NonNull LifecycleOwner lifecycleOwner, @NonNull Lifecycle.Event event) {
                if (event == Lifecycle.Event.ON_DESTROY) {
                    handler.removeCallbacks(runnable);
                    lifecycleOwner.getLifecycle().removeObserver(this);
                }
            }
        });
        handler.postDelayed(runnable, 10000L);
    }

    private void scheduleViewAttach(final Fragment fragment, @NonNull final FrameLayout frameLayout) {
        this.mFragmentManager.registerFragmentLifecycleCallbacks(new FragmentManager.FragmentLifecycleCallbacks() { // from class: androidx.viewpager2.adapter.FragmentStateAdapter.2
            @Override // androidx.fragment.app.FragmentManager.FragmentLifecycleCallbacks
            public void onFragmentViewCreated(@NonNull FragmentManager fragmentManager, @NonNull Fragment fragment2, @NonNull View view, @Nullable Bundle bundle) {
                if (fragment2 == fragment) {
                    fragmentManager.unregisterFragmentLifecycleCallbacks(this);
                    FragmentStateAdapter.this.addViewToContainer(view, frameLayout);
                }
            }
        }, false);
    }

    void addViewToContainer(@NonNull View view, @NonNull FrameLayout frameLayout) {
        if (frameLayout.getChildCount() <= 1) {
            if (view.getParent() == frameLayout) {
                return;
            }
            if (frameLayout.getChildCount() > 0) {
                frameLayout.removeAllViews();
            }
            if (view.getParent() != null) {
                ((ViewGroup) view.getParent()).removeView(view);
            }
            frameLayout.addView(view);
            return;
        }
        throw new IllegalStateException("Design assumption violated.");
    }

    public boolean containsItem(long j10) {
        if (j10 >= 0 && j10 < getItemCount()) {
            return true;
        }
        return false;
    }

    @NonNull
    public abstract Fragment createFragment(int i10);

    void gcFragments() {
        if (this.mHasStaleFragments && !shouldDelayFragmentTransactions()) {
            ArraySet<Long> arraySet = new ArraySet();
            for (int i10 = 0; i10 < this.mFragments.size(); i10++) {
                long keyAt = this.mFragments.keyAt(i10);
                if (!containsItem(keyAt)) {
                    arraySet.add(Long.valueOf(keyAt));
                    this.mItemIdToViewHolder.remove(keyAt);
                }
            }
            if (!this.mIsInGracePeriod) {
                this.mHasStaleFragments = false;
                for (int i11 = 0; i11 < this.mFragments.size(); i11++) {
                    long keyAt2 = this.mFragments.keyAt(i11);
                    if (!isFragmentViewBound(keyAt2)) {
                        arraySet.add(Long.valueOf(keyAt2));
                    }
                }
            }
            for (Long l10 : arraySet) {
                removeFragment(l10.longValue());
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public long getItemId(int i10) {
        return i10;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @CallSuper
    public void onAttachedToRecyclerView(@NonNull RecyclerView recyclerView) {
        boolean z10;
        if (this.mFragmentMaxLifecycleEnforcer == null) {
            z10 = true;
        } else {
            z10 = false;
        }
        Preconditions.checkArgument(z10);
        FragmentMaxLifecycleEnforcer fragmentMaxLifecycleEnforcer = new FragmentMaxLifecycleEnforcer();
        this.mFragmentMaxLifecycleEnforcer = fragmentMaxLifecycleEnforcer;
        fragmentMaxLifecycleEnforcer.register(recyclerView);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @CallSuper
    public void onDetachedFromRecyclerView(@NonNull RecyclerView recyclerView) {
        this.mFragmentMaxLifecycleEnforcer.unregister(recyclerView);
        this.mFragmentMaxLifecycleEnforcer = null;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final boolean onFailedToRecycleView(@NonNull FragmentViewHolder fragmentViewHolder) {
        return true;
    }

    void placeFragmentInViewHolder(@NonNull final FragmentViewHolder fragmentViewHolder) {
        Fragment fragment = this.mFragments.get(fragmentViewHolder.getItemId());
        if (fragment != null) {
            FrameLayout container = fragmentViewHolder.getContainer();
            View view = fragment.getView();
            if (!fragment.isAdded() && view != null) {
                throw new IllegalStateException("Design assumption violated.");
            }
            if (fragment.isAdded() && view == null) {
                scheduleViewAttach(fragment, container);
                return;
            } else if (fragment.isAdded() && view.getParent() != null) {
                if (view.getParent() != container) {
                    addViewToContainer(view, container);
                    return;
                }
                return;
            } else if (fragment.isAdded()) {
                addViewToContainer(view, container);
                return;
            } else if (!shouldDelayFragmentTransactions()) {
                scheduleViewAttach(fragment, container);
                List<FragmentTransactionCallback.OnPostEventListener> dispatchPreAdded = this.mFragmentEventDispatcher.dispatchPreAdded(fragment);
                try {
                    fragment.setMenuVisibility(false);
                    FragmentTransaction beginTransaction = this.mFragmentManager.beginTransaction();
                    beginTransaction.add(fragment, "f" + fragmentViewHolder.getItemId()).setMaxLifecycle(fragment, Lifecycle.State.STARTED).commitNow();
                    this.mFragmentMaxLifecycleEnforcer.updateFragmentMaxLifecycle(false);
                    return;
                } finally {
                    this.mFragmentEventDispatcher.dispatchPostEvents(dispatchPreAdded);
                }
            } else if (this.mFragmentManager.isDestroyed()) {
                return;
            } else {
                this.mLifecycle.addObserver(new LifecycleEventObserver() { // from class: androidx.viewpager2.adapter.FragmentStateAdapter.1
                    @Override // androidx.lifecycle.LifecycleEventObserver
                    public void onStateChanged(@NonNull LifecycleOwner lifecycleOwner, @NonNull Lifecycle.Event event) {
                        if (FragmentStateAdapter.this.shouldDelayFragmentTransactions()) {
                            return;
                        }
                        lifecycleOwner.getLifecycle().removeObserver(this);
                        if (ViewCompat.isAttachedToWindow(fragmentViewHolder.getContainer())) {
                            FragmentStateAdapter.this.placeFragmentInViewHolder(fragmentViewHolder);
                        }
                    }
                });
                return;
            }
        }
        throw new IllegalStateException("Design assumption violated.");
    }

    public void registerFragmentTransactionCallback(@NonNull FragmentTransactionCallback fragmentTransactionCallback) {
        this.mFragmentEventDispatcher.registerCallback(fragmentTransactionCallback);
    }

    @Override // androidx.viewpager2.adapter.StatefulAdapter
    public final void restoreState(@NonNull Parcelable parcelable) {
        if (this.mSavedStates.isEmpty() && this.mFragments.isEmpty()) {
            Bundle bundle = (Bundle) parcelable;
            if (bundle.getClassLoader() == null) {
                bundle.setClassLoader(getClass().getClassLoader());
            }
            for (String str : bundle.keySet()) {
                if (isValidKey(str, KEY_PREFIX_FRAGMENT)) {
                    this.mFragments.put(parseIdFromKey(str, KEY_PREFIX_FRAGMENT), this.mFragmentManager.getFragment(bundle, str));
                } else if (isValidKey(str, KEY_PREFIX_STATE)) {
                    long parseIdFromKey = parseIdFromKey(str, KEY_PREFIX_STATE);
                    Fragment.SavedState savedState = (Fragment.SavedState) bundle.getParcelable(str);
                    if (containsItem(parseIdFromKey)) {
                        this.mSavedStates.put(parseIdFromKey, savedState);
                    }
                } else {
                    throw new IllegalArgumentException("Unexpected key in savedState: " + str);
                }
            }
            if (!this.mFragments.isEmpty()) {
                this.mHasStaleFragments = true;
                this.mIsInGracePeriod = true;
                gcFragments();
                scheduleGracePeriodEnd();
                return;
            }
            return;
        }
        throw new IllegalStateException("Expected the adapter to be 'fresh' while restoring state.");
    }

    @Override // androidx.viewpager2.adapter.StatefulAdapter
    @NonNull
    public final Parcelable saveState() {
        Bundle bundle = new Bundle(this.mFragments.size() + this.mSavedStates.size());
        for (int i10 = 0; i10 < this.mFragments.size(); i10++) {
            long keyAt = this.mFragments.keyAt(i10);
            Fragment fragment = this.mFragments.get(keyAt);
            if (fragment != null && fragment.isAdded()) {
                this.mFragmentManager.putFragment(bundle, createKey(KEY_PREFIX_FRAGMENT, keyAt), fragment);
            }
        }
        for (int i11 = 0; i11 < this.mSavedStates.size(); i11++) {
            long keyAt2 = this.mSavedStates.keyAt(i11);
            if (containsItem(keyAt2)) {
                bundle.putParcelable(createKey(KEY_PREFIX_STATE, keyAt2), this.mSavedStates.get(keyAt2));
            }
        }
        return bundle;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void setHasStableIds(boolean z10) {
        throw new UnsupportedOperationException("Stable Ids are required for the adapter to function properly, and the adapter takes care of setting the flag.");
    }

    boolean shouldDelayFragmentTransactions() {
        return this.mFragmentManager.isStateSaved();
    }

    public void unregisterFragmentTransactionCallback(@NonNull FragmentTransactionCallback fragmentTransactionCallback) {
        this.mFragmentEventDispatcher.unregisterCallback(fragmentTransactionCallback);
    }

    public FragmentStateAdapter(@NonNull Fragment fragment) {
        this(fragment.getChildFragmentManager(), fragment.getLifecycle());
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void onBindViewHolder(@NonNull FragmentViewHolder fragmentViewHolder, int i10) {
        long itemId = fragmentViewHolder.getItemId();
        int id2 = fragmentViewHolder.getContainer().getId();
        Long itemForViewHolder = itemForViewHolder(id2);
        if (itemForViewHolder != null && itemForViewHolder.longValue() != itemId) {
            removeFragment(itemForViewHolder.longValue());
            this.mItemIdToViewHolder.remove(itemForViewHolder.longValue());
        }
        this.mItemIdToViewHolder.put(itemId, Integer.valueOf(id2));
        ensureFragment(i10);
        if (ViewCompat.isAttachedToWindow(fragmentViewHolder.getContainer())) {
            placeFragmentInViewHolder(fragmentViewHolder);
        }
        gcFragments();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    public final FragmentViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i10) {
        return FragmentViewHolder.create(viewGroup);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void onViewAttachedToWindow(@NonNull FragmentViewHolder fragmentViewHolder) {
        placeFragmentInViewHolder(fragmentViewHolder);
        gcFragments();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void onViewRecycled(@NonNull FragmentViewHolder fragmentViewHolder) {
        Long itemForViewHolder = itemForViewHolder(fragmentViewHolder.getContainer().getId());
        if (itemForViewHolder != null) {
            removeFragment(itemForViewHolder.longValue());
            this.mItemIdToViewHolder.remove(itemForViewHolder.longValue());
        }
    }

    public FragmentStateAdapter(@NonNull FragmentManager fragmentManager, @NonNull Lifecycle lifecycle) {
        this.mFragments = new LongSparseArray<>();
        this.mSavedStates = new LongSparseArray<>();
        this.mItemIdToViewHolder = new LongSparseArray<>();
        this.mFragmentEventDispatcher = new FragmentEventDispatcher();
        this.mIsInGracePeriod = false;
        this.mHasStaleFragments = false;
        this.mFragmentManager = fragmentManager;
        this.mLifecycle = lifecycle;
        super.setHasStableIds(true);
    }
}
