package androidx.viewpager2.widget;

import androidx.annotation.NonNull;
import androidx.annotation.Px;
import androidx.viewpager2.widget.ViewPager2;
import java.util.ArrayList;
import java.util.ConcurrentModificationException;
import java.util.List;
/* loaded from: classes2.dex */
final class CompositeOnPageChangeCallback extends ViewPager2.OnPageChangeCallback {
    @NonNull
    private final List<ViewPager2.OnPageChangeCallback> mCallbacks;

    /* JADX INFO: Access modifiers changed from: package-private */
    public CompositeOnPageChangeCallback(int i10) {
        this.mCallbacks = new ArrayList(i10);
    }

    private void throwCallbackListModifiedWhileInUse(ConcurrentModificationException concurrentModificationException) {
        throw new IllegalStateException("Adding and removing callbacks during dispatch to callbacks is not supported", concurrentModificationException);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void addOnPageChangeCallback(ViewPager2.OnPageChangeCallback onPageChangeCallback) {
        this.mCallbacks.add(onPageChangeCallback);
    }

    @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
    public void onPageScrollStateChanged(int i10) {
        try {
            for (ViewPager2.OnPageChangeCallback onPageChangeCallback : this.mCallbacks) {
                onPageChangeCallback.onPageScrollStateChanged(i10);
            }
        } catch (ConcurrentModificationException e10) {
            throwCallbackListModifiedWhileInUse(e10);
        }
    }

    @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
    public void onPageScrolled(int i10, float f10, @Px int i11) {
        try {
            for (ViewPager2.OnPageChangeCallback onPageChangeCallback : this.mCallbacks) {
                onPageChangeCallback.onPageScrolled(i10, f10, i11);
            }
        } catch (ConcurrentModificationException e10) {
            throwCallbackListModifiedWhileInUse(e10);
        }
    }

    @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
    public void onPageSelected(int i10) {
        try {
            for (ViewPager2.OnPageChangeCallback onPageChangeCallback : this.mCallbacks) {
                onPageChangeCallback.onPageSelected(i10);
            }
        } catch (ConcurrentModificationException e10) {
            throwCallbackListModifiedWhileInUse(e10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void removeOnPageChangeCallback(ViewPager2.OnPageChangeCallback onPageChangeCallback) {
        this.mCallbacks.remove(onPageChangeCallback);
    }
}
