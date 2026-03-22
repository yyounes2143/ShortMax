package com.startshorts.androidplayer.manager.shorts.core;

import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;
import com.startshorts.androidplayer.log.Logger;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ShortsViewPagerManager.kt */
@Metadata
/* loaded from: classes6.dex */
public final class ShortsViewPagerManager {
    @NotNull

    /* renamed from: j  reason: collision with root package name */
    public static final a f42956j = new a(null);
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final ViewPager2 f42957a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final b f42958b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private ViewPager2.OnPageChangeCallback f42959c;

    /* renamed from: d  reason: collision with root package name */
    private int f42960d;

    /* renamed from: e  reason: collision with root package name */
    private int f42961e;

    /* renamed from: f  reason: collision with root package name */
    private int f42962f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f42963g;

    /* renamed from: h  reason: collision with root package name */
    private int f42964h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f42965i;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: ShortsViewPagerManager.kt */
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

    /* compiled from: ShortsViewPagerManager.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: ShortsViewPagerManager.kt */
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
    }

    public ShortsViewPagerManager(@NotNull ViewPager2 viewPager, @NotNull b listener) {
        Intrinsics.checkNotNullParameter(viewPager, "viewPager");
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.f42957a = viewPager;
        this.f42958b = listener;
        this.f42960d = -1;
        this.f42961e = -1;
        this.f42962f = -1;
        n();
    }

    private final void n() {
        if (this.f42959c != null) {
            return;
        }
        ShortsViewPagerManager$initViewPagerOnPageCallback$onPageChangeCallback$1 shortsViewPagerManager$initViewPagerOnPageCallback$onPageChangeCallback$1 = new ShortsViewPagerManager$initViewPagerOnPageCallback$onPageChangeCallback$1(new Ref.BooleanRef(), this, new Ref.BooleanRef(), new Ref.IntRef(), new Ref.ObjectRef(), this.f42957a);
        this.f42959c = shortsViewPagerManager$initViewPagerOnPageCallback$onPageChangeCallback$1;
        this.f42957a.registerOnPageChangeCallback(shortsViewPagerManager$initViewPagerOnPageCallback$onPageChangeCallback$1);
    }

    public static /* synthetic */ void s(ShortsViewPagerManager shortsViewPagerManager, boolean z10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z10 = false;
        }
        shortsViewPagerManager.r(z10);
    }

    public final void k() {
        if (this.f42965i) {
            this.f42965i = false;
            Logger.f41511a.h("ShortsViewPagerManager", "finishLoadingNext");
        }
    }

    public final int l() {
        return this.f42961e;
    }

    public final int m() {
        return this.f42960d;
    }

    public final boolean o() {
        if (this.f42964h == 1) {
            return true;
        }
        return false;
    }

    public final void p() {
        ViewPager2.OnPageChangeCallback onPageChangeCallback = this.f42959c;
        if (onPageChangeCallback != null) {
            this.f42957a.unregisterOnPageChangeCallback(onPageChangeCallback);
        }
        this.f42959c = null;
    }

    public final void q() {
        Logger.f41511a.h("ShortsViewPagerManager", "resetPosition");
        this.f42960d = -1;
        this.f42961e = -1;
        this.f42962f = -1;
        this.f42963g = false;
        this.f42964h = 0;
    }

    public final void r(boolean z10) {
        if (!this.f42965i) {
            this.f42965i = true;
            Logger logger = Logger.f41511a;
            logger.h("ShortsViewPagerManager", "startLoadingNext -> fromUser(" + z10 + ')');
            this.f42958b.a(z10);
        }
    }

    public final void t() {
        RecyclerView.Adapter adapter = this.f42957a.getAdapter();
        if (adapter != null) {
            int itemCount = adapter.getItemCount();
            int i10 = this.f42961e;
            if (i10 >= this.f42960d && Math.abs(i10 - itemCount) <= 3) {
                s(this, false, 1, null);
            }
        }
    }
}
