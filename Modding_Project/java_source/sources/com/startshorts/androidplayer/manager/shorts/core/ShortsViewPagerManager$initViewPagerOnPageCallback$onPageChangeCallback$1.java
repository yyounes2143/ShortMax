package com.startshorts.androidplayer.manager.shorts.core;

import androidx.viewpager2.widget.ViewPager2;
import com.startshorts.androidplayer.listener.OnPageChangeCallbackCompat;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.manager.shorts.core.ShortsViewPagerManager;
import com.startshorts.androidplayer.manager.shorts.core.ShortsViewPagerManager$initViewPagerOnPageCallback$onPageChangeCallback$1;
import fk.h0;
import kotlin.Metadata;
import kotlin.jvm.internal.Ref;
/* compiled from: ShortsViewPagerManager.kt */
@Metadata
/* loaded from: classes6.dex */
public final class ShortsViewPagerManager$initViewPagerOnPageCallback$onPageChangeCallback$1 extends OnPageChangeCallbackCompat {

    /* renamed from: f  reason: collision with root package name */
    final /* synthetic */ Ref.BooleanRef f42966f;

    /* renamed from: g  reason: collision with root package name */
    final /* synthetic */ ShortsViewPagerManager f42967g;

    /* renamed from: h  reason: collision with root package name */
    final /* synthetic */ Ref.BooleanRef f42968h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ Ref.IntRef f42969i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ Ref.ObjectRef<ShortsViewPagerManager.DraggingDirection> f42970j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ShortsViewPagerManager$initViewPagerOnPageCallback$onPageChangeCallback$1(Ref.BooleanRef booleanRef, ShortsViewPagerManager shortsViewPagerManager, Ref.BooleanRef booleanRef2, Ref.IntRef intRef, Ref.ObjectRef<ShortsViewPagerManager.DraggingDirection> objectRef, ViewPager2 viewPager2) {
        super(viewPager2);
        this.f42966f = booleanRef;
        this.f42967g = shortsViewPagerManager;
        this.f42968h = booleanRef2;
        this.f42969i = intRef;
        this.f42970j = objectRef;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void m(ShortsViewPagerManager shortsViewPagerManager, int i10, Ref.BooleanRef booleanRef, Ref.BooleanRef booleanRef2) {
        ShortsViewPagerManager.b bVar;
        int i11;
        bVar = shortsViewPagerManager.f42958b;
        i11 = shortsViewPagerManager.f42960d;
        bVar.c(i10, i11, booleanRef.element, booleanRef2.element);
        shortsViewPagerManager.t();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void n(Ref.BooleanRef booleanRef, ShortsViewPagerManager shortsViewPagerManager) {
        ShortsViewPagerManager.b bVar;
        if (booleanRef.element) {
            bVar = shortsViewPagerManager.f42958b;
            bVar.f();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void o(ShortsViewPagerManager shortsViewPagerManager, Ref.BooleanRef booleanRef) {
        ShortsViewPagerManager.b bVar;
        int i10;
        bVar = shortsViewPagerManager.f42958b;
        i10 = shortsViewPagerManager.f42961e;
        bVar.d(i10, booleanRef.element);
        booleanRef.element = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void p(Ref.BooleanRef booleanRef, ShortsViewPagerManager shortsViewPagerManager) {
        ShortsViewPagerManager.b bVar;
        if (!booleanRef.element) {
            bVar = shortsViewPagerManager.f42958b;
            bVar.e();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void q(ShortsViewPagerManager shortsViewPagerManager, int i10) {
        ShortsViewPagerManager.b bVar;
        bVar = shortsViewPagerManager.f42958b;
        bVar.b(i10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void r(ShortsViewPagerManager shortsViewPagerManager) {
        ShortsViewPagerManager.b bVar;
        bVar = shortsViewPagerManager.f42958b;
        bVar.g(ShortsViewPagerManager.DraggingDirection.UP);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void s(ShortsViewPagerManager shortsViewPagerManager) {
        ShortsViewPagerManager.b bVar;
        bVar = shortsViewPagerManager.f42958b;
        bVar.g(ShortsViewPagerManager.DraggingDirection.DOWN);
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
        sb2.append(this.f42966f.element);
        sb2.append(") mLastPosition(");
        i11 = this.f42967g.f42960d;
        sb2.append(i11);
        sb2.append(") mCurrentPosition(");
        i12 = this.f42967g.f42961e;
        sb2.append(i12);
        sb2.append(") nextPosition(");
        sb2.append(i10);
        sb2.append(')');
        logger.h("ShortsViewPagerManager", sb2.toString());
        i13 = this.f42967g.f42961e;
        if (i10 != i13) {
            ShortsViewPagerManager shortsViewPagerManager = this.f42967g;
            i14 = shortsViewPagerManager.f42961e;
            shortsViewPagerManager.f42960d = i14;
            this.f42967g.f42961e = i10;
            this.f42967g.f42963g = true;
            h0 h0Var = h0.f51735a;
            final ShortsViewPagerManager shortsViewPagerManager2 = this.f42967g;
            final Ref.BooleanRef booleanRef = this.f42968h;
            final Ref.BooleanRef booleanRef2 = this.f42966f;
            h0Var.e(new Runnable() { // from class: wf.e
                @Override // java.lang.Runnable
                public final void run() {
                    ShortsViewPagerManager$initViewPagerOnPageCallback$onPageChangeCallback$1.m(ShortsViewPagerManager.this, i10, booleanRef, booleanRef2);
                }
            });
        }
    }

    @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
    public void onPageScrollStateChanged(int i10) {
        boolean z10;
        boolean z11;
        this.f42967g.f42964h = i10;
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 == 2) {
                    this.f42968h.element = true;
                    return;
                }
                return;
            }
            final Ref.BooleanRef booleanRef = this.f42966f;
            booleanRef.element = true;
            h0 h0Var = h0.f51735a;
            final ShortsViewPagerManager shortsViewPagerManager = this.f42967g;
            h0Var.e(new Runnable() { // from class: wf.b
                @Override // java.lang.Runnable
                public final void run() {
                    ShortsViewPagerManager$initViewPagerOnPageCallback$onPageChangeCallback$1.n(Ref.BooleanRef.this, shortsViewPagerManager);
                }
            });
            return;
        }
        Logger logger = Logger.f41511a;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("SCROLL_STATE_IDLE -> mCurrentPositionUpdated(");
        z10 = this.f42967g.f42963g;
        sb2.append(z10);
        sb2.append(") userDragging(");
        sb2.append(this.f42966f.element);
        sb2.append(')');
        logger.h("ShortsViewPagerManager", sb2.toString());
        this.f42967g.f42962f = -1;
        this.f42969i.element = 0;
        this.f42970j.element = null;
        this.f42968h.element = false;
        z11 = this.f42967g.f42963g;
        if (z11) {
            this.f42967g.f42963g = false;
            h0 h0Var2 = h0.f51735a;
            final ShortsViewPagerManager shortsViewPagerManager2 = this.f42967g;
            final Ref.BooleanRef booleanRef2 = this.f42966f;
            h0Var2.e(new Runnable() { // from class: wf.c
                @Override // java.lang.Runnable
                public final void run() {
                    ShortsViewPagerManager$initViewPagerOnPageCallback$onPageChangeCallback$1.o(ShortsViewPagerManager.this, booleanRef2);
                }
            });
            return;
        }
        final Ref.BooleanRef booleanRef3 = this.f42966f;
        if (booleanRef3.element) {
            booleanRef3.element = false;
            h0 h0Var3 = h0.f51735a;
            final ShortsViewPagerManager shortsViewPagerManager3 = this.f42967g;
            h0Var3.e(new Runnable() { // from class: wf.d
                @Override // java.lang.Runnable
                public final void run() {
                    ShortsViewPagerManager$initViewPagerOnPageCallback$onPageChangeCallback$1.p(Ref.BooleanRef.this, shortsViewPagerManager3);
                }
            });
        }
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [T, com.startshorts.androidplayer.manager.shorts.core.ShortsViewPagerManager$DraggingDirection] */
    /* JADX WARN: Type inference failed for: r0v2, types: [T, com.startshorts.androidplayer.manager.shorts.core.ShortsViewPagerManager$DraggingDirection] */
    @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
    public void onPageScrolled(final int i10, float f10, int i11) {
        int i12;
        int i13;
        i12 = this.f42967g.f42962f;
        if (i10 != i12) {
            this.f42967g.f42962f = i10;
            h0 h0Var = h0.f51735a;
            final ShortsViewPagerManager shortsViewPagerManager = this.f42967g;
            h0Var.e(new Runnable() { // from class: wf.f
                @Override // java.lang.Runnable
                public final void run() {
                    ShortsViewPagerManager$initViewPagerOnPageCallback$onPageChangeCallback$1.q(ShortsViewPagerManager.this, i10);
                }
            });
        }
        if (this.f42966f.element && (i13 = this.f42969i.element) != 0 && i11 != 0) {
            if (i11 - i13 > 0) {
                Ref.ObjectRef<ShortsViewPagerManager.DraggingDirection> objectRef = this.f42970j;
                ShortsViewPagerManager.DraggingDirection draggingDirection = objectRef.element;
                ?? r02 = ShortsViewPagerManager.DraggingDirection.UP;
                if (draggingDirection != r02) {
                    objectRef.element = r02;
                    h0 h0Var2 = h0.f51735a;
                    final ShortsViewPagerManager shortsViewPagerManager2 = this.f42967g;
                    h0Var2.e(new Runnable() { // from class: wf.g
                        @Override // java.lang.Runnable
                        public final void run() {
                            ShortsViewPagerManager$initViewPagerOnPageCallback$onPageChangeCallback$1.r(ShortsViewPagerManager.this);
                        }
                    });
                }
            } else {
                Ref.ObjectRef<ShortsViewPagerManager.DraggingDirection> objectRef2 = this.f42970j;
                ShortsViewPagerManager.DraggingDirection draggingDirection2 = objectRef2.element;
                ?? r03 = ShortsViewPagerManager.DraggingDirection.DOWN;
                if (draggingDirection2 != r03) {
                    objectRef2.element = r03;
                    h0 h0Var3 = h0.f51735a;
                    final ShortsViewPagerManager shortsViewPagerManager3 = this.f42967g;
                    h0Var3.e(new Runnable() { // from class: wf.h
                        @Override // java.lang.Runnable
                        public final void run() {
                            ShortsViewPagerManager$initViewPagerOnPageCallback$onPageChangeCallback$1.s(ShortsViewPagerManager.this);
                        }
                    });
                }
            }
        }
        this.f42969i.element = i11;
    }
}
