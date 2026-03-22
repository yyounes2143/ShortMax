package androidx.preference;

import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.core.view.ViewCompat;
import androidx.preference.Preference;
import androidx.preference.PreferenceGroup;
import androidx.preference.PreferenceManager;
import androidx.recyclerview.widget.DiffUtil;
import androidx.recyclerview.widget.RecyclerView;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import java.util.ArrayList;
import java.util.List;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes2.dex */
public class PreferenceGroupAdapter extends RecyclerView.Adapter<PreferenceViewHolder> implements Preference.OnPreferenceChangeInternalListener, PreferenceGroup.PreferencePositionCallback {
    private PreferenceGroup mPreferenceGroup;
    private List<PreferenceResourceDescriptor> mPreferenceResourceDescriptors;
    private List<Preference> mPreferences;
    private List<Preference> mVisiblePreferences;
    private Runnable mSyncRunnable = new Runnable() { // from class: androidx.preference.PreferenceGroupAdapter.1
        @Override // java.lang.Runnable
        public void run() {
            PreferenceGroupAdapter.this.updatePreferences();
        }
    };
    private Handler mHandler = new Handler();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class PreferenceResourceDescriptor {
        String mClassName;
        int mLayoutResId;
        int mWidgetLayoutResId;

        PreferenceResourceDescriptor(Preference preference) {
            this.mClassName = preference.getClass().getName();
            this.mLayoutResId = preference.getLayoutResource();
            this.mWidgetLayoutResId = preference.getWidgetLayoutResource();
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof PreferenceResourceDescriptor)) {
                return false;
            }
            PreferenceResourceDescriptor preferenceResourceDescriptor = (PreferenceResourceDescriptor) obj;
            if (this.mLayoutResId != preferenceResourceDescriptor.mLayoutResId || this.mWidgetLayoutResId != preferenceResourceDescriptor.mWidgetLayoutResId || !TextUtils.equals(this.mClassName, preferenceResourceDescriptor.mClassName)) {
                return false;
            }
            return true;
        }

        public int hashCode() {
            return ((((TTVideoEngineInterface.PLAYER_OPTION_ABR_STALL_PENALTY_PARAMETER + this.mLayoutResId) * 31) + this.mWidgetLayoutResId) * 31) + this.mClassName.hashCode();
        }
    }

    public PreferenceGroupAdapter(PreferenceGroup preferenceGroup) {
        this.mPreferenceGroup = preferenceGroup;
        this.mPreferenceGroup.setOnPreferenceChangeInternalListener(this);
        this.mPreferences = new ArrayList();
        this.mVisiblePreferences = new ArrayList();
        this.mPreferenceResourceDescriptors = new ArrayList();
        PreferenceGroup preferenceGroup2 = this.mPreferenceGroup;
        if (preferenceGroup2 instanceof PreferenceScreen) {
            setHasStableIds(((PreferenceScreen) preferenceGroup2).shouldUseGeneratedIds());
        } else {
            setHasStableIds(true);
        }
        updatePreferences();
    }

    private ExpandButton createExpandButton(final PreferenceGroup preferenceGroup, List<Preference> list) {
        ExpandButton expandButton = new ExpandButton(preferenceGroup.getContext(), list, preferenceGroup.getId());
        expandButton.setOnPreferenceClickListener(new Preference.OnPreferenceClickListener() { // from class: androidx.preference.PreferenceGroupAdapter.3
            @Override // androidx.preference.Preference.OnPreferenceClickListener
            public boolean onPreferenceClick(Preference preference) {
                preferenceGroup.setInitialExpandedChildrenCount(Integer.MAX_VALUE);
                PreferenceGroupAdapter.this.onPreferenceHierarchyChange(preference);
                PreferenceGroup.OnExpandButtonClickListener onExpandButtonClickListener = preferenceGroup.getOnExpandButtonClickListener();
                if (onExpandButtonClickListener != null) {
                    onExpandButtonClickListener.onExpandButtonClick();
                    return true;
                }
                return true;
            }
        });
        return expandButton;
    }

    private List<Preference> createVisiblePreferencesList(PreferenceGroup preferenceGroup) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        int preferenceCount = preferenceGroup.getPreferenceCount();
        int i10 = 0;
        for (int i11 = 0; i11 < preferenceCount; i11++) {
            Preference preference = preferenceGroup.getPreference(i11);
            if (preference.isVisible()) {
                if (isGroupExpandable(preferenceGroup) && i10 >= preferenceGroup.getInitialExpandedChildrenCount()) {
                    arrayList2.add(preference);
                } else {
                    arrayList.add(preference);
                }
                if (!(preference instanceof PreferenceGroup)) {
                    i10++;
                } else {
                    PreferenceGroup preferenceGroup2 = (PreferenceGroup) preference;
                    if (!preferenceGroup2.isOnSameScreenAsChildren()) {
                        continue;
                    } else if (isGroupExpandable(preferenceGroup) && isGroupExpandable(preferenceGroup2)) {
                        throw new IllegalStateException("Nesting an expandable group inside of another expandable group is not supported!");
                    } else {
                        for (Preference preference2 : createVisiblePreferencesList(preferenceGroup2)) {
                            if (isGroupExpandable(preferenceGroup) && i10 >= preferenceGroup.getInitialExpandedChildrenCount()) {
                                arrayList2.add(preference2);
                            } else {
                                arrayList.add(preference2);
                            }
                            i10++;
                        }
                    }
                }
            }
        }
        if (isGroupExpandable(preferenceGroup) && i10 > preferenceGroup.getInitialExpandedChildrenCount()) {
            arrayList.add(createExpandButton(preferenceGroup, arrayList2));
        }
        return arrayList;
    }

    private void flattenPreferenceGroup(List<Preference> list, PreferenceGroup preferenceGroup) {
        preferenceGroup.sortPreferences();
        int preferenceCount = preferenceGroup.getPreferenceCount();
        for (int i10 = 0; i10 < preferenceCount; i10++) {
            Preference preference = preferenceGroup.getPreference(i10);
            list.add(preference);
            PreferenceResourceDescriptor preferenceResourceDescriptor = new PreferenceResourceDescriptor(preference);
            if (!this.mPreferenceResourceDescriptors.contains(preferenceResourceDescriptor)) {
                this.mPreferenceResourceDescriptors.add(preferenceResourceDescriptor);
            }
            if (preference instanceof PreferenceGroup) {
                PreferenceGroup preferenceGroup2 = (PreferenceGroup) preference;
                if (preferenceGroup2.isOnSameScreenAsChildren()) {
                    flattenPreferenceGroup(list, preferenceGroup2);
                }
            }
            preference.setOnPreferenceChangeInternalListener(this);
        }
    }

    private boolean isGroupExpandable(PreferenceGroup preferenceGroup) {
        if (preferenceGroup.getInitialExpandedChildrenCount() != Integer.MAX_VALUE) {
            return true;
        }
        return false;
    }

    public Preference getItem(int i10) {
        if (i10 >= 0 && i10 < getItemCount()) {
            return this.mVisiblePreferences.get(i10);
        }
        return null;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.mVisiblePreferences.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public long getItemId(int i10) {
        if (!hasStableIds()) {
            return -1L;
        }
        return getItem(i10).getId();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i10) {
        PreferenceResourceDescriptor preferenceResourceDescriptor = new PreferenceResourceDescriptor(getItem(i10));
        int indexOf = this.mPreferenceResourceDescriptors.indexOf(preferenceResourceDescriptor);
        if (indexOf != -1) {
            return indexOf;
        }
        int size = this.mPreferenceResourceDescriptors.size();
        this.mPreferenceResourceDescriptors.add(preferenceResourceDescriptor);
        return size;
    }

    @Override // androidx.preference.PreferenceGroup.PreferencePositionCallback
    public int getPreferenceAdapterPosition(String str) {
        int size = this.mVisiblePreferences.size();
        for (int i10 = 0; i10 < size; i10++) {
            if (TextUtils.equals(str, this.mVisiblePreferences.get(i10).getKey())) {
                return i10;
            }
        }
        return -1;
    }

    @Override // androidx.preference.Preference.OnPreferenceChangeInternalListener
    public void onPreferenceChange(Preference preference) {
        int indexOf = this.mVisiblePreferences.indexOf(preference);
        if (indexOf != -1) {
            notifyItemChanged(indexOf, preference);
        }
    }

    @Override // androidx.preference.Preference.OnPreferenceChangeInternalListener
    public void onPreferenceHierarchyChange(Preference preference) {
        this.mHandler.removeCallbacks(this.mSyncRunnable);
        this.mHandler.post(this.mSyncRunnable);
    }

    @Override // androidx.preference.Preference.OnPreferenceChangeInternalListener
    public void onPreferenceVisibilityChange(Preference preference) {
        onPreferenceHierarchyChange(preference);
    }

    void updatePreferences() {
        for (Preference preference : this.mPreferences) {
            preference.setOnPreferenceChangeInternalListener(null);
        }
        ArrayList arrayList = new ArrayList(this.mPreferences.size());
        this.mPreferences = arrayList;
        flattenPreferenceGroup(arrayList, this.mPreferenceGroup);
        final List<Preference> list = this.mVisiblePreferences;
        final List<Preference> createVisiblePreferencesList = createVisiblePreferencesList(this.mPreferenceGroup);
        this.mVisiblePreferences = createVisiblePreferencesList;
        PreferenceManager preferenceManager = this.mPreferenceGroup.getPreferenceManager();
        if (preferenceManager != null && preferenceManager.getPreferenceComparisonCallback() != null) {
            final PreferenceManager.PreferenceComparisonCallback preferenceComparisonCallback = preferenceManager.getPreferenceComparisonCallback();
            DiffUtil.calculateDiff(new DiffUtil.Callback() { // from class: androidx.preference.PreferenceGroupAdapter.2
                @Override // androidx.recyclerview.widget.DiffUtil.Callback
                public boolean areContentsTheSame(int i10, int i11) {
                    return preferenceComparisonCallback.arePreferenceContentsTheSame((Preference) list.get(i10), (Preference) createVisiblePreferencesList.get(i11));
                }

                @Override // androidx.recyclerview.widget.DiffUtil.Callback
                public boolean areItemsTheSame(int i10, int i11) {
                    return preferenceComparisonCallback.arePreferenceItemsTheSame((Preference) list.get(i10), (Preference) createVisiblePreferencesList.get(i11));
                }

                @Override // androidx.recyclerview.widget.DiffUtil.Callback
                public int getNewListSize() {
                    return createVisiblePreferencesList.size();
                }

                @Override // androidx.recyclerview.widget.DiffUtil.Callback
                public int getOldListSize() {
                    return list.size();
                }
            }).dispatchUpdatesTo(this);
        } else {
            notifyDataSetChanged();
        }
        for (Preference preference2 : this.mPreferences) {
            preference2.clearWasDetached();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(@NonNull PreferenceViewHolder preferenceViewHolder, int i10) {
        getItem(i10).onBindViewHolder(preferenceViewHolder);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    public PreferenceViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i10) {
        PreferenceResourceDescriptor preferenceResourceDescriptor = this.mPreferenceResourceDescriptors.get(i10);
        LayoutInflater from = LayoutInflater.from(viewGroup.getContext());
        TypedArray obtainStyledAttributes = viewGroup.getContext().obtainStyledAttributes((AttributeSet) null, R.styleable.BackgroundStyle);
        Drawable drawable = obtainStyledAttributes.getDrawable(R.styleable.BackgroundStyle_android_selectableItemBackground);
        if (drawable == null) {
            drawable = AppCompatResources.getDrawable(viewGroup.getContext(), 17301602);
        }
        obtainStyledAttributes.recycle();
        View inflate = from.inflate(preferenceResourceDescriptor.mLayoutResId, viewGroup, false);
        if (inflate.getBackground() == null) {
            ViewCompat.setBackground(inflate, drawable);
        }
        ViewGroup viewGroup2 = (ViewGroup) inflate.findViewById(16908312);
        if (viewGroup2 != null) {
            int i11 = preferenceResourceDescriptor.mWidgetLayoutResId;
            if (i11 != 0) {
                from.inflate(i11, viewGroup2);
            } else {
                viewGroup2.setVisibility(8);
            }
        }
        return new PreferenceViewHolder(inflate);
    }

    @Override // androidx.preference.PreferenceGroup.PreferencePositionCallback
    public int getPreferenceAdapterPosition(Preference preference) {
        int size = this.mVisiblePreferences.size();
        for (int i10 = 0; i10 < size; i10++) {
            Preference preference2 = this.mVisiblePreferences.get(i10);
            if (preference2 != null && preference2.equals(preference)) {
                return i10;
            }
        }
        return -1;
    }
}
