package com.startshorts.androidplayer.manager.immersion.core;

import androidx.viewpager2.widget.ViewPager2;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.manager.immersion.core.ImmersionViewPagerManager;
import com.startshorts.androidplayer.manager.immersion.core.ImmersionViewPagerManager$initViewPagerOnPageCallback$onPageChangeCallback$1;
import fk.h0;
import kotlin.Metadata;
import kotlin.jvm.internal.Ref;
/* compiled from: ImmersionViewPagerManager.kt */
@Metadata
/* loaded from: classes6.dex */
public final class ImmersionViewPagerManager$initViewPagerOnPageCallback$onPageChangeCallback$1 extends ImmersionViewPagerManager.OnPageChangeCallbackCompatRegisterAble {

    /* renamed from: g  reason: collision with root package name */
    final /* synthetic */ Ref.BooleanRef f42583g;

    /* renamed from: h  reason: collision with root package name */
    final /* synthetic */ ImmersionViewPagerManager f42584h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ Ref.BooleanRef f42585i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ Ref.IntRef f42586j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ Ref.ObjectRef<ImmersionViewPagerManager.DraggingDirection> f42587k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ImmersionViewPagerManager$initViewPagerOnPageCallback$onPageChangeCallback$1(Ref.BooleanRef booleanRef, ImmersionViewPagerManager immersionViewPagerManager, Ref.BooleanRef booleanRef2, Ref.IntRef intRef, Ref.ObjectRef<ImmersionViewPagerManager.DraggingDirection> objectRef, ViewPager2 viewPager2) {
        super(viewPager2);
        this.f42583g = booleanRef;
        this.f42584h = immersionViewPagerManager;
        this.f42585i = booleanRef2;
        this.f42586j = intRef;
        this.f42587k = objectRef;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void o(ImmersionViewPagerManager immersionViewPagerManager, int i10, Ref.BooleanRef booleanRef, Ref.BooleanRef booleanRef2) {
        ImmersionViewPagerManager.b bVar;
        int i11;
        bVar = immersionViewPagerManager.f42571b;
        i11 = immersionViewPagerManager.f42573d;
        bVar.c(i10, i11, booleanRef.element, booleanRef2.element);
        ImmersionViewPagerManager.C(immersionViewPagerManager, false, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void p(Ref.BooleanRef booleanRef, ImmersionViewPagerManager immersionViewPagerManager) {
        ImmersionViewPagerManager.b bVar;
        if (booleanRef.element) {
            bVar = immersionViewPagerManager.f42571b;
            bVar.f();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void q(ImmersionViewPagerManager immersionViewPagerManager, Ref.BooleanRef booleanRef) {
        ImmersionViewPagerManager.b bVar;
        int i10;
        bVar = immersionViewPagerManager.f42571b;
        i10 = immersionViewPagerManager.f42574e;
        bVar.d(i10, booleanRef.element);
        booleanRef.element = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void r(Ref.BooleanRef booleanRef, ImmersionViewPagerManager immersionViewPagerManager) {
        ImmersionViewPagerManager.b bVar;
        if (!booleanRef.element) {
            bVar = immersionViewPagerManager.f42571b;
            bVar.e();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void s(ImmersionViewPagerManager immersionViewPagerManager, int i10) {
        ImmersionViewPagerManager.b bVar;
        bVar = immersionViewPagerManager.f42571b;
        bVar.b(i10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void t(ImmersionViewPagerManager immersionViewPagerManager) {
        ImmersionViewPagerManager.b bVar;
        bVar = immersionViewPagerManager.f42571b;
        bVar.g(ImmersionViewPagerManager.DraggingDirection.UP);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void u(ImmersionViewPagerManager immersionViewPagerManager) {
        ImmersionViewPagerManager.b bVar;
        bVar = immersionViewPagerManager.f42571b;
        bVar.g(ImmersionViewPagerManager.DraggingDirection.DOWN);
    }

    @Override // com.startshorts.androidplayer.listener.OnPageChangeCallbackCompat
    public void c(final int i10) {
        int i11;
        int i12;
        int i13;
        int i14;
        Logger logger = Logger.f41511a;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("onPageRealSelected -> userDragging(");
        sb2.append(this.f42583g.element);
        sb2.append(") mLastPosition(");
        i11 = this.f42584h.f42573d;
        sb2.append(i11);
        sb2.append(") mCurrentPosition(");
        i12 = this.f42584h.f42574e;
        sb2.append(i12);
        sb2.append(") nextPosition(");
        sb2.append(i10);
        sb2.append(')');
        logger.h("ImmersionViewPagerManager", sb2.toString());
        i13 = this.f42584h.f42574e;
        if (i10 != i13) {
            ImmersionViewPagerManager immersionViewPagerManager = this.f42584h;
            i14 = immersionViewPagerManager.f42574e;
            immersionViewPagerManager.f42573d = i14;
            this.f42584h.f42574e = i10;
            this.f42584h.f42576g = true;
            h0 h0Var = h0.f51735a;
            final ImmersionViewPagerManager immersionViewPagerManager2 = this.f42584h;
            final Ref.BooleanRef booleanRef = this.f42585i;
            final Ref.BooleanRef booleanRef2 = this.f42583g;
            h0Var.e(new Runnable() { // from class: gf.c
                @Override // java.lang.Runnable
                public final void run() {
                    ImmersionViewPagerManager$initViewPagerOnPageCallback$onPageChangeCallback$1.o(ImmersionViewPagerManager.this, i10, booleanRef, booleanRef2);
                }
            });
        }
    }

    @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
    public void onPageScrollStateChanged(int i10) {
        boolean z10;
        boolean z11;
        this.f42584h.f42577h = i10;
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 == 2) {
                    this.f42585i.element = true;
                    return;
                }
                return;
            }
            final Ref.BooleanRef booleanRef = this.f42583g;
            booleanRef.element = true;
            h0 h0Var = h0.f51735a;
            final ImmersionViewPagerManager immersionViewPagerManager = this.f42584h;
            h0Var.e(new Runnable() { // from class: gf.g
                @Override // java.lang.Runnable
                public final void run() {
                    ImmersionViewPagerManager$initViewPagerOnPageCallback$onPageChangeCallback$1.p(Ref.BooleanRef.this, immersionViewPagerManager);
                }
            });
            return;
        }
        Logger logger = Logger.f41511a;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("SCROLL_STATE_IDLE -> mCurrentPositionUpdated(");
        z10 = this.f42584h.f42576g;
        sb2.append(z10);
        sb2.append(") userDragging(");
        sb2.append(this.f42583g.element);
        sb2.append(')');
        logger.h("ImmersionViewPagerManager", sb2.toString());
        this.f42584h.f42575f = -1;
        this.f42586j.element = 0;
        this.f42587k.element = null;
        this.f42585i.element = false;
        z11 = this.f42584h.f42576g;
        if (z11) {
            this.f42584h.f42576g = false;
            h0 h0Var2 = h0.f51735a;
            final ImmersionViewPagerManager immersionViewPagerManager2 = this.f42584h;
            final Ref.BooleanRef booleanRef2 = this.f42583g;
            h0Var2.e(new Runnable() { // from class: gf.h
                @Override // java.lang.Runnable
                public final void run() {
                    ImmersionViewPagerManager$initViewPagerOnPageCallback$onPageChangeCallback$1.q(ImmersionViewPagerManager.this, booleanRef2);
                }
            });
            return;
        }
        final Ref.BooleanRef booleanRef3 = this.f42583g;
        if (booleanRef3.element) {
            booleanRef3.element = false;
            h0 h0Var3 = h0.f51735a;
            final ImmersionViewPagerManager immersionViewPagerManager3 = this.f42584h;
            h0Var3.e(new Runnable() { // from class: gf.i
                @Override // java.lang.Runnable
                public final void run() {
                    ImmersionViewPagerManager$initViewPagerOnPageCallback$onPageChangeCallback$1.r(Ref.BooleanRef.this, immersionViewPagerManager3);
                }
            });
        }
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [com.startshorts.androidplayer.manager.immersion.core.ImmersionViewPagerManager$DraggingDirection, T] */
    /* JADX WARN: Type inference failed for: r0v2, types: [com.startshorts.androidplayer.manager.immersion.core.ImmersionViewPagerManager$DraggingDirection, T] */
    @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
    public void onPageScrolled(final int i10, float f10, int i11) {
        int i12;
        int i13;
        i12 = this.f42584h.f42575f;
        if (i10 != i12) {
            this.f42584h.f42575f = i10;
            h0 h0Var = h0.f51735a;
            final ImmersionViewPagerManager immersionViewPagerManager = this.f42584h;
            h0Var.e(new Runnable() { // from class: gf.d
                @Override // java.lang.Runnable
                public final void run() {
                    ImmersionViewPagerManager$initViewPagerOnPageCallback$onPageChangeCallback$1.s(ImmersionViewPagerManager.this, i10);
                }
            });
        }
        if (this.f42583g.element && (i13 = this.f42586j.element) != 0 && i11 != 0) {
            if (i11 - i13 > 0) {
                Ref.ObjectRef<ImmersionViewPagerManager.DraggingDirection> objectRef = this.f42587k;
                ImmersionViewPagerManager.DraggingDirection draggingDirection = objectRef.element;
                ?? r02 = ImmersionViewPagerManager.DraggingDirection.UP;
                if (draggingDirection != r02) {
                    objectRef.element = r02;
                    h0 h0Var2 = h0.f51735a;
                    final ImmersionViewPagerManager immersionViewPagerManager2 = this.f42584h;
                    h0Var2.e(new Runnable() { // from class: gf.e
                        @Override // java.lang.Runnable
                        public final void run() {
                            ImmersionViewPagerManager$initViewPagerOnPageCallback$onPageChangeCallback$1.t(ImmersionViewPagerManager.this);
                        }
                    });
                }
            } else {
                Ref.ObjectRef<ImmersionViewPagerManager.DraggingDirection> objectRef2 = this.f42587k;
                ImmersionViewPagerManager.DraggingDirection draggingDirection2 = objectRef2.element;
                ?? r03 = ImmersionViewPagerManager.DraggingDirection.DOWN;
                if (draggingDirection2 != r03) {
                    objectRef2.element = r03;
                    h0 h0Var3 = h0.f51735a;
                    final ImmersionViewPagerManager immersionViewPagerManager3 = this.f42584h;
                    h0Var3.e(new Runnable() { // from class: gf.f
                        @Override // java.lang.Runnable
                        public final void run() {
                            ImmersionViewPagerManager$initViewPagerOnPageCallback$onPageChangeCallback$1.u(ImmersionViewPagerManager.this);
                        }
                    });
                }
            }
        }
        this.f42586j.element = i11;
    }
}
