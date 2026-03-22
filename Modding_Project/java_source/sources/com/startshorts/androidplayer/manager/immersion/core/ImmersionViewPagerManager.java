package com.startshorts.androidplayer.manager.immersion.core;

import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;
import com.startshorts.androidplayer.listener.OnPageChangeCallbackCompat;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.manager.immersion.core.ImmersionViewPagerManager;
import jk.d0;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ImmersionViewPagerManager.kt */
@Metadata
/* loaded from: classes6.dex */
public final class ImmersionViewPagerManager {
    @NotNull

    /* renamed from: m */
    public static final a f42569m = new a(null);
    @NotNull

    /* renamed from: a */
    private final ViewPager2 f42570a;
    @NotNull

    /* renamed from: b */
    private final b f42571b;
    @Nullable

    /* renamed from: c */
    private OnPageChangeCallbackCompatRegisterAble f42572c;

    /* renamed from: d */
    private int f42573d;

    /* renamed from: e */
    private int f42574e;

    /* renamed from: f */
    private int f42575f;

    /* renamed from: g */
    private boolean f42576g;

    /* renamed from: h */
    private int f42577h;

    /* renamed from: i */
    private boolean f42578i;

    /* renamed from: j */
    private boolean f42579j;

    /* renamed from: k */
    private boolean f42580k;

    /* renamed from: l */
    private boolean f42581l;

    /* compiled from: ImmersionViewPagerManager.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class DraggingDirection {
        private static final /* synthetic */ ss.a $ENTRIES;
        private static final /* synthetic */ DraggingDirection[] $VALUES;
        public static final DraggingDirection UP = new DraggingDirection("UP", 0);
        public static final DraggingDirection DOWN = new DraggingDirection("DOWN", 1);

        private static final /* synthetic */ DraggingDirection[] $values() {
            return new DraggingDirection[]{UP, DOWN};
        }

        static {
            DraggingDirection[] $values = $values();
            $VALUES = $values;
            $ENTRIES = kotlin.enums.a.a($values);
        }

        private DraggingDirection(String str, int i10) {
            super(str, i10);
        }

        @NotNull
        public static ss.a<DraggingDirection> getEntries() {
            return $ENTRIES;
        }

        public static DraggingDirection valueOf(String str) {
            return (DraggingDirection) Enum.valueOf(DraggingDirection.class, str);
        }

        public static DraggingDirection[] values() {
            return (DraggingDirection[]) $VALUES.clone();
        }
    }

    /* compiled from: ImmersionViewPagerManager.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static abstract class OnPageChangeCallbackCompatRegisterAble extends OnPageChangeCallbackCompat {

        /* renamed from: f */
        private boolean f42582f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public OnPageChangeCallbackCompatRegisterAble(@NotNull ViewPager2 viewPager) {
            super(viewPager);
            Intrinsics.checkNotNullParameter(viewPager, "viewPager");
        }

        public final boolean f() {
            return this.f42582f;
        }

        public final void g(boolean z10) {
            this.f42582f = z10;
        }
    }

    /* compiled from: ImmersionViewPagerManager.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: ImmersionViewPagerManager.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public interface b {
        void a(boolean z10);

        void b(int i10);

        void c(int i10, int i11, boolean z10, boolean z11);

        void d(int i10, boolean z10);

        void e();

        void f();

        void g(@NotNull DraggingDirection draggingDirection);

        void h(boolean z10);
    }

    public ImmersionViewPagerManager(@NotNull ViewPager2 viewPager, @NotNull b listener) {
        Intrinsics.checkNotNullParameter(viewPager, "viewPager");
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.f42570a = viewPager;
        this.f42571b = listener;
        this.f42573d = -1;
        this.f42574e = -1;
        this.f42575f = -1;
        this.f42581l = true;
        q();
    }

    public static /* synthetic */ void A(ImmersionViewPagerManager immersionViewPagerManager, boolean z10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z10 = false;
        }
        immersionViewPagerManager.z(z10);
    }

    public static /* synthetic */ void C(ImmersionViewPagerManager immersionViewPagerManager, boolean z10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z10 = false;
        }
        immersionViewPagerManager.B(z10);
    }

    private final void q() {
        if (this.f42572c != null) {
            return;
        }
        this.f42572c = new ImmersionViewPagerManager$initViewPagerOnPageCallback$onPageChangeCallback$1(new Ref.BooleanRef(), this, new Ref.BooleanRef(), new Ref.IntRef(), new Ref.ObjectRef(), this.f42570a);
        s(true, "onInit");
    }

    public static final void w(Boolean bool, ImmersionViewPagerManager immersionViewPagerManager, int i10) {
        if (bool != null) {
            if (!bool.booleanValue()) {
                d0.b(immersionViewPagerManager.f42570a, i10);
                return;
            } else {
                immersionViewPagerManager.f42570a.setCurrentItem(i10, bool.booleanValue());
                return;
            }
        }
        immersionViewPagerManager.f42570a.setCurrentItem(i10);
    }

    public static /* synthetic */ void y(ImmersionViewPagerManager immersionViewPagerManager, boolean z10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z10 = false;
        }
        immersionViewPagerManager.x(z10);
    }

    public final void B(boolean z10) {
        RecyclerView.Adapter adapter = this.f42570a.getAdapter();
        if (adapter != null) {
            int itemCount = adapter.getItemCount();
            int i10 = this.f42574e;
            if (i10 < this.f42573d && !z10) {
                if (this.f42579j && i10 <= 6) {
                    A(this, false, 1, null);
                }
            } else if (this.f42581l && Math.abs(i10 - itemCount) <= 6) {
                y(this, false, 1, null);
            }
        }
    }

    public final void D(int i10, int i11) {
        if (this.f42574e == i10) {
            this.f42574e = i11;
        }
    }

    public final void l() {
        if (this.f42581l) {
            this.f42581l = false;
            Logger.f41511a.h("ImmersionViewPagerManager", "disableLoadNext");
        }
    }

    public final void m() {
        if (this.f42580k) {
            this.f42580k = false;
            Logger.f41511a.h("ImmersionViewPagerManager", "finishLoadingNext");
        }
    }

    public final void n() {
        if (this.f42578i) {
            this.f42578i = false;
            Logger.f41511a.h("ImmersionViewPagerManager", "finishLoadingPrev");
        }
    }

    public final int o() {
        return this.f42574e;
    }

    public final int p() {
        return this.f42573d;
    }

    public final boolean r() {
        if (this.f42577h == 1) {
            return true;
        }
        return false;
    }

    public final void s(boolean z10, @NotNull String from) {
        Intrinsics.checkNotNullParameter(from, "from");
        OnPageChangeCallbackCompatRegisterAble onPageChangeCallbackCompatRegisterAble = this.f42572c;
        if (onPageChangeCallbackCompatRegisterAble == null) {
            return;
        }
        if (z10) {
            try {
                if (!onPageChangeCallbackCompatRegisterAble.f()) {
                    Logger logger = Logger.f41511a;
                    logger.h("ImmersionViewPagerManager", "registerOnPageChangeCallback -> tryRegister(true) from(" + from + ')');
                    this.f42570a.registerOnPageChangeCallback(onPageChangeCallbackCompatRegisterAble);
                    onPageChangeCallbackCompatRegisterAble.g(true);
                }
            } catch (Exception e10) {
                Logger logger2 = Logger.f41511a;
                logger2.e("ImmersionViewPagerManager", "registerOnPageChangeCallback exception -> " + e10.getMessage());
                return;
            }
        }
        if (!z10 && onPageChangeCallbackCompatRegisterAble.f()) {
            Logger logger3 = Logger.f41511a;
            logger3.h("ImmersionViewPagerManager", "registerOnPageChangeCallback -> tryRegister(false) from(" + from + ')');
            this.f42570a.unregisterOnPageChangeCallback(onPageChangeCallbackCompatRegisterAble);
            onPageChangeCallbackCompatRegisterAble.g(false);
        }
    }

    public final void t() {
        if (this.f42572c != null) {
            s(false, "release");
        }
        this.f42572c = null;
    }

    public final void u() {
        Logger.f41511a.h("ImmersionViewPagerManager", "resetPosition");
        this.f42573d = -1;
        this.f42574e = -1;
        this.f42575f = -1;
        this.f42576g = false;
        this.f42577h = 0;
    }

    public final void v(final int i10, @Nullable final Boolean bool) {
        if (qe.a.f65321a.value().getUnregisterOnPageChangeCallbackOnPause()) {
            s(true, "setCurrentItem");
        }
        this.f42570a.post(new Runnable() { // from class: gf.b
            @Override // java.lang.Runnable
            public final void run() {
                ImmersionViewPagerManager.w(bool, this, i10);
            }
        });
    }

    public final void x(boolean z10) {
        if (!this.f42580k && this.f42581l) {
            this.f42580k = true;
            Logger logger = Logger.f41511a;
            logger.h("ImmersionViewPagerManager", "startLoadingNext -> fromUser(" + z10 + ')');
            this.f42571b.a(z10);
        }
    }

    public final void z(boolean z10) {
        if (!this.f42578i) {
            this.f42578i = true;
            Logger logger = Logger.f41511a;
            logger.h("ImmersionViewPagerManager", "startLoadingPrev -> fromUser(" + z10 + ')');
            this.f42571b.h(z10);
        }
    }
}
