package com.vungle.ads.internal;

import android.app.Activity;
import android.content.Context;
import android.graphics.Rect;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import androidx.annotation.VisibleForTesting;
import androidx.core.view.ViewCompat;
import com.vungle.ads.internal.util.Logger;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import java.util.WeakHashMap;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ImpressionTracker.kt */
@Metadata
/* loaded from: classes7.dex */
public final class ImpressionTracker {
    private static final int MIN_VISIBILITY_PERCENTAGE = 1;
    private static final int VISIBILITY_THROTTLE_MILLIS = 100;
    @NotNull
    private final Rect clipRect;
    private boolean isVisibilityScheduled;
    @NotNull
    private final ViewTreeObserver.OnPreDrawListener onPreDrawListener;
    private boolean setViewTreeObserverSucceed;
    @NotNull
    private final Map<View, TrackingInfo> trackedViews;
    @NotNull
    private final Handler visibilityHandler;
    @NotNull
    private final VisibilityRunnable visibilityRunnable;
    @NotNull
    private WeakReference<ViewTreeObserver> weakViewTreeObserver;
    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final String TAG = ImpressionTracker.class.getSimpleName();

    /* compiled from: ImpressionTracker.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    /* compiled from: ImpressionTracker.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public interface ImpressionListener {
        void onImpression(@Nullable View view);

        void onViewInvisible(@Nullable View view);
    }

    /* compiled from: ImpressionTracker.kt */
    @Metadata
    @VisibleForTesting
    /* loaded from: classes7.dex */
    public static final class TrackingInfo {
        @Nullable
        private ImpressionListener impressionListener;
        private int minViewablePercent;

        @Nullable
        public final ImpressionListener getImpressionListener() {
            return this.impressionListener;
        }

        public final int getMinViewablePercent() {
            return this.minViewablePercent;
        }

        public final void setImpressionListener(@Nullable ImpressionListener impressionListener) {
            this.impressionListener = impressionListener;
        }

        public final void setMinViewablePercent(int i10) {
            this.minViewablePercent = i10;
        }
    }

    /* compiled from: ImpressionTracker.kt */
    @Metadata
    @VisibleForTesting
    /* loaded from: classes7.dex */
    public final class VisibilityRunnable implements Runnable {
        @NotNull
        private final ArrayList<View> visibleViews = new ArrayList<>();
        @NotNull
        private final ArrayList<View> invisibleViews = new ArrayList<>();

        public VisibilityRunnable() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ImpressionListener impressionListener;
            ImpressionListener impressionListener2;
            ImpressionTracker.this.isVisibilityScheduled = false;
            for (Map.Entry entry : ImpressionTracker.this.trackedViews.entrySet()) {
                View view = (View) entry.getKey();
                if (ImpressionTracker.this.isVisible(view, ((TrackingInfo) entry.getValue()).getMinViewablePercent())) {
                    this.visibleViews.add(view);
                } else {
                    this.invisibleViews.add(view);
                }
            }
            Iterator<View> it = this.visibleViews.iterator();
            while (it.hasNext()) {
                View view2 = it.next();
                TrackingInfo trackingInfo = (TrackingInfo) ImpressionTracker.this.trackedViews.get(view2);
                if (trackingInfo != null && (impressionListener2 = trackingInfo.getImpressionListener()) != null) {
                    impressionListener2.onImpression(view2);
                }
                ImpressionTracker impressionTracker = ImpressionTracker.this;
                Intrinsics.checkNotNullExpressionValue(view2, "view");
                impressionTracker.removeView(view2);
            }
            this.visibleViews.clear();
            Iterator<View> it2 = this.invisibleViews.iterator();
            while (it2.hasNext()) {
                View next = it2.next();
                TrackingInfo trackingInfo2 = (TrackingInfo) ImpressionTracker.this.trackedViews.get(next);
                if (trackingInfo2 != null && (impressionListener = trackingInfo2.getImpressionListener()) != null) {
                    impressionListener.onViewInvisible(next);
                }
            }
            this.invisibleViews.clear();
            if (!ImpressionTracker.this.trackedViews.isEmpty() && !ImpressionTracker.this.setViewTreeObserverSucceed) {
                ImpressionTracker.this.scheduleVisibilityCheck();
            }
        }
    }

    @VisibleForTesting
    public ImpressionTracker(@NotNull Context context, @NotNull Map<View, TrackingInfo> trackedViews, @NotNull Handler visibilityHandler) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(trackedViews, "trackedViews");
        Intrinsics.checkNotNullParameter(visibilityHandler, "visibilityHandler");
        this.trackedViews = trackedViews;
        this.visibilityHandler = visibilityHandler;
        this.clipRect = new Rect();
        this.visibilityRunnable = new VisibilityRunnable();
        this.onPreDrawListener = new ViewTreeObserver.OnPreDrawListener() { // from class: com.vungle.ads.internal.a
            @Override // android.view.ViewTreeObserver.OnPreDrawListener
            public final boolean onPreDraw() {
                boolean m4777_init_$lambda0;
                m4777_init_$lambda0 = ImpressionTracker.m4777_init_$lambda0(ImpressionTracker.this);
                return m4777_init_$lambda0;
            }
        };
        this.weakViewTreeObserver = new WeakReference<>(null);
        this.setViewTreeObserverSucceed = setViewTreeObserver(context, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: _init_$lambda-0  reason: not valid java name */
    public static final boolean m4777_init_$lambda0(ImpressionTracker this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.scheduleVisibilityCheck();
        return true;
    }

    private final View getTopView(Context context, View view) {
        View view2;
        if (context instanceof Activity) {
            view2 = ((Activity) context).getWindow().getDecorView().findViewById(16908290);
        } else {
            view2 = null;
        }
        if (view2 == null && view != null) {
            if (!ViewCompat.isAttachedToWindow(view)) {
                Logger.Companion companion = Logger.Companion;
                String TAG2 = TAG;
                Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
                companion.w(TAG2, "Trying to call View#rootView() on an unattached View.");
            }
            View rootView = view.getRootView();
            if (rootView != null) {
                view2 = rootView.findViewById(16908290);
            }
            if (view2 == null) {
                return rootView;
            }
            return view2;
        }
        return view2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean isVisible(View view, int i10) {
        if (view == null || view.getVisibility() != 0 || view.getParent() == null) {
            return false;
        }
        ViewParent parent = view.getParent();
        while (parent instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) parent;
            if (viewGroup.getVisibility() != 0) {
                Logger.Companion companion = Logger.Companion;
                companion.w("ImpressionTracker", "Parent visibility is not visible: " + parent);
                return false;
            }
            parent = viewGroup.getParent();
        }
        if (!view.getGlobalVisibleRect(this.clipRect)) {
            return false;
        }
        long height = this.clipRect.height() * this.clipRect.width();
        long height2 = view.getHeight() * view.getWidth();
        if (height2 <= 0 || 100 * height < i10 * height2) {
            return false;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void scheduleVisibilityCheck() {
        if (this.isVisibilityScheduled) {
            return;
        }
        this.isVisibilityScheduled = true;
        this.visibilityHandler.postDelayed(this.visibilityRunnable, 100L);
    }

    private final boolean setViewTreeObserver(Context context, View view) {
        ViewTreeObserver viewTreeObserver = this.weakViewTreeObserver.get();
        if (viewTreeObserver != null && viewTreeObserver.isAlive()) {
            return true;
        }
        View topView = getTopView(context, view);
        if (topView == null) {
            Logger.Companion companion = Logger.Companion;
            String TAG2 = TAG;
            Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
            companion.d(TAG2, "Unable to set ViewTreeObserver due to no available root view.");
            return false;
        }
        ViewTreeObserver viewTreeObserver2 = topView.getViewTreeObserver();
        if (!viewTreeObserver2.isAlive()) {
            Logger.Companion companion2 = Logger.Companion;
            String TAG3 = TAG;
            Intrinsics.checkNotNullExpressionValue(TAG3, "TAG");
            companion2.d(TAG3, "The root view tree observer was not alive");
            return false;
        }
        this.weakViewTreeObserver = new WeakReference<>(viewTreeObserver2);
        viewTreeObserver2.addOnPreDrawListener(this.onPreDrawListener);
        return true;
    }

    public final void addView(@NotNull View view, @Nullable ImpressionListener impressionListener) {
        Intrinsics.checkNotNullParameter(view, "view");
        this.setViewTreeObserverSucceed = setViewTreeObserver(view.getContext(), view);
        TrackingInfo trackingInfo = this.trackedViews.get(view);
        if (trackingInfo == null) {
            trackingInfo = new TrackingInfo();
            this.trackedViews.put(view, trackingInfo);
            scheduleVisibilityCheck();
        }
        trackingInfo.setMinViewablePercent(1);
        trackingInfo.setImpressionListener(impressionListener);
    }

    public final void clear() {
        this.trackedViews.clear();
        this.visibilityHandler.removeMessages(0);
        this.isVisibilityScheduled = false;
    }

    public final void destroy() {
        clear();
        ViewTreeObserver viewTreeObserver = this.weakViewTreeObserver.get();
        if (viewTreeObserver != null && viewTreeObserver.isAlive()) {
            viewTreeObserver.removeOnPreDrawListener(this.onPreDrawListener);
        }
        this.weakViewTreeObserver.clear();
    }

    @NotNull
    public final ViewTreeObserver.OnPreDrawListener getOnPreDrawListener() {
        return this.onPreDrawListener;
    }

    @NotNull
    public final WeakReference<ViewTreeObserver> getWeakViewTreeObserver() {
        return this.weakViewTreeObserver;
    }

    @VisibleForTesting
    public final void removeView(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        this.trackedViews.remove(view);
    }

    public final void setWeakViewTreeObserver(@NotNull WeakReference<ViewTreeObserver> weakReference) {
        Intrinsics.checkNotNullParameter(weakReference, "<set-?>");
        this.weakViewTreeObserver = weakReference;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ImpressionTracker(@NotNull Context context) {
        this(context, new WeakHashMap(10), new Handler(Looper.getMainLooper()));
        Intrinsics.checkNotNullParameter(context, "context");
    }

    @VisibleForTesting
    public static /* synthetic */ void getOnPreDrawListener$annotations() {
    }

    @VisibleForTesting
    public static /* synthetic */ void getWeakViewTreeObserver$annotations() {
    }
}
