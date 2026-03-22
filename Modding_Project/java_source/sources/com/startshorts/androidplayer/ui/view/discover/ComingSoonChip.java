package com.startshorts.androidplayer.ui.view.discover;

import android.content.Context;
import android.os.Bundle;
import android.util.AttributeSet;
import android.view.View;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.FragmentManager;
import au.c;
import au.l;
import com.startshorts.androidplayer.R$drawable;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.R$string;
import com.startshorts.androidplayer.bean.eventbus.RefreshReservationEvent;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.ui.view.discover.ComingSoonChip;
import com.startshorts.androidplayer.utils.CoroutineUtil;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import yd.d;
/* compiled from: ComingSoonChip.kt */
@Metadata
/* loaded from: classes7.dex */
public class ComingSoonChip extends BaseChip {
    @NotNull

    /* renamed from: i  reason: collision with root package name */
    public static final a f47207i = new a(null);

    /* renamed from: e  reason: collision with root package name */
    private int f47208e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f47209f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f47210g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f47211h;

    /* compiled from: ComingSoonChip.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: ComingSoonChip.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class b extends d {

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ Function0<Unit> f47212e;

        /* renamed from: f  reason: collision with root package name */
        final /* synthetic */ ComingSoonChip f47213f;

        /* renamed from: g  reason: collision with root package name */
        final /* synthetic */ FragmentManager f47214g;

        /* renamed from: h  reason: collision with root package name */
        final /* synthetic */ int f47215h;

        /* renamed from: i  reason: collision with root package name */
        final /* synthetic */ String f47216i;

        /* renamed from: j  reason: collision with root package name */
        final /* synthetic */ Function1<Boolean, Unit> f47217j;

        /* renamed from: k  reason: collision with root package name */
        final /* synthetic */ Function0<Unit> f47218k;

        /* renamed from: l  reason: collision with root package name */
        final /* synthetic */ Function0<Unit> f47219l;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        b(Function0<Unit> function0, ComingSoonChip comingSoonChip, FragmentManager fragmentManager, int i10, String str, Function1<? super Boolean, Unit> function1, Function0<Unit> function02, Function0<Unit> function03) {
            super(0L, 1, null);
            this.f47212e = function0;
            this.f47213f = comingSoonChip;
            this.f47214g = fragmentManager;
            this.f47215h = i10;
            this.f47216i = str;
            this.f47217j = function1;
            this.f47218k = function02;
            this.f47219l = function03;
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            Function0<Unit> function0 = this.f47212e;
            if (function0 != null) {
                function0.invoke();
                return;
            }
            DialogFragment F = this.f47213f.F(this.f47214g, this.f47215h, this.f47216i, this.f47217j, this.f47218k, this.f47219l);
            if (F != null) {
                try {
                    F.show(this.f47214g, "NotificationPermissionDialog");
                } catch (Exception e10) {
                    Logger logger = Logger.f41511a;
                    logger.e("ComingSoonChip", "init show permission dialog exception -> " + e10.getMessage());
                }
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ComingSoonChip(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.checkNotNullParameter(context, "context");
        this.f47208e = -1;
    }

    private final void G(boolean z10, int i10, Function1<? super Boolean, Unit> function1) {
        CoroutineUtil coroutineUtil = CoroutineUtil.f48072a;
        CoroutineUtil.l(coroutineUtil, "doReservationOperation_" + i10 + '_' + z10, false, new ComingSoonChip$doReservationOperation$2(z10, this, i10, function1, null), 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit H(ComingSoonChip comingSoonChip, int i10, Function1 function1, Function0 function0, boolean z10) {
        if (z10) {
            comingSoonChip.G(true, i10, function1);
        }
        if (function0 != null) {
            function0.invoke();
        }
        return Unit.f60915a;
    }

    public static /* synthetic */ void J(ComingSoonChip comingSoonChip, FragmentManager fragmentManager, int i10, String str, boolean z10, Function1 function1, Function0 function0, Function0 function02, Function0 function03, int i11, Object obj) {
        Function1 function12;
        Function0 function04;
        Function0 function05;
        Function0 function06;
        if (obj == null) {
            if ((i11 & 16) != 0) {
                function12 = null;
            } else {
                function12 = function1;
            }
            if ((i11 & 32) != 0) {
                function04 = null;
            } else {
                function04 = function0;
            }
            if ((i11 & 64) != 0) {
                function05 = null;
            } else {
                function05 = function02;
            }
            if ((i11 & 128) != 0) {
                function06 = null;
            } else {
                function06 = function03;
            }
            comingSoonChip.I(fragmentManager, i10, str, z10, function12, function04, function05, function06);
            return;
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: init");
    }

    @Override // com.startshorts.androidplayer.ui.view.discover.BaseChip
    @NotNull
    public String B() {
        int i10;
        Context context = getContext();
        if (A()) {
            i10 = R$string.discover_fragment_reserved;
        } else {
            i10 = R$string.discover_fragment_remind_me;
        }
        String string = context.getString(i10);
        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
        return string;
    }

    @Nullable
    public final DialogFragment F(@NotNull FragmentManager fragmentManager, final int i10, @Nullable String str, @Nullable final Function1<? super Boolean, Unit> function1, @Nullable Function0<Unit> function0, @Nullable final Function0<Unit> function02) {
        String str2;
        Intrinsics.checkNotNullParameter(fragmentManager, "fragmentManager");
        boolean z10 = this.f47209f;
        if (!z10) {
            str2 = "remind_me_click";
        } else {
            str2 = "reserved_click";
        }
        String str3 = str2;
        EventManager eventManager = EventManager.f42463a;
        Bundle bundle = new Bundle();
        bundle.putString("scene", K());
        if (str != null) {
            bundle.putString("reel_id", str);
        }
        Unit unit = Unit.f60915a;
        EventManager.s0(eventManager, str3, bundle, 0L, 4, null);
        if (!z10) {
            DialogFragment e10 = mk.a.f62518a.e(fragmentManager, "coming_soon", false, new Function1() { // from class: gj.a
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    Unit H;
                    H = ComingSoonChip.H(ComingSoonChip.this, i10, function1, function02, ((Boolean) obj).booleanValue());
                    return H;
                }
            });
            if (e10 == null) {
                G(true, i10, function1);
                if (function02 != null) {
                    function02.invoke();
                    return null;
                }
                return null;
            }
            if (function0 != null) {
                function0.invoke();
            }
            return e10;
        }
        G(false, i10, function1);
        return null;
    }

    public final void I(@NotNull FragmentManager fragmentManager, int i10, @Nullable String str, boolean z10, @Nullable Function1<? super Boolean, Unit> function1, @Nullable Function0<Unit> function0, @Nullable Function0<Unit> function02, @Nullable Function0<Unit> function03) {
        Intrinsics.checkNotNullParameter(fragmentManager, "fragmentManager");
        this.f47208e = i10;
        this.f47209f = z10;
        setChecked(z10);
        setOnClickListener(new b(function0, this, fragmentManager, i10, str, function1, function02, function03));
    }

    @NotNull
    public String K() {
        return "discover";
    }

    @Override // com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout
    public int getLayoutResource() {
        return R$layout.view_coming_soon_chip;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f47211h = true;
        if (!this.f47210g) {
            this.f47210g = true;
            c.d().p(this);
        }
        if (this.f47208e != -1) {
            setChecked(this.f47209f);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f47211h = false;
    }

    @l(threadMode = ThreadMode.MAIN)
    public final void receiveRefreshReservationEvent(@NotNull RefreshReservationEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        s("receiveRefreshReservationEvent -> event(" + event + ") mShortsId(" + this.f47208e + ')');
        if (this.f47208e == event.getShortsId()) {
            this.f47209f = event.getReservation();
            if (this.f47211h) {
                setChecked(event.getReservation());
            }
        }
    }

    @Override // com.startshorts.androidplayer.ui.view.discover.BaseChip
    public int z() {
        if (A()) {
            return R$drawable.ic_discover_2_reserved;
        }
        return R$drawable.ic_discover_2_remind_me;
    }
}
