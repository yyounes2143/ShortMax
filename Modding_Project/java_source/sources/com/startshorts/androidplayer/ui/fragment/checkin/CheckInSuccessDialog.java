package com.startshorts.androidplayer.ui.fragment.checkin;

import android.annotation.SuppressLint;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.View;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.R$string;
import com.startshorts.androidplayer.databinding.DialogCheckInSuccessBinding;
import com.startshorts.androidplayer.ui.fragment.base.BaseDialogFragment;
import com.startshorts.androidplayer.ui.fragment.checkin.CheckInSuccessDialog;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import com.startshorts.androidplayer.utils.CoroutineUtil;
import fk.u;
import jk.b0;
import jk.g;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.r;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import yd.d;
/* compiled from: CheckInSuccessDialog.kt */
@Metadata
/* loaded from: classes7.dex */
public final class CheckInSuccessDialog extends BaseDialogFragment<DialogCheckInSuccessBinding> {
    @NotNull

    /* renamed from: v  reason: collision with root package name */
    public static final a f45801v = new a(null);

    /* renamed from: i  reason: collision with root package name */
    private boolean f45802i;

    /* renamed from: j  reason: collision with root package name */
    private int f45803j;

    /* renamed from: k  reason: collision with root package name */
    private int f45804k;

    /* renamed from: l  reason: collision with root package name */
    private int f45805l;

    /* renamed from: m  reason: collision with root package name */
    private int f45806m;
    @Nullable

    /* renamed from: n  reason: collision with root package name */
    private String f45807n;

    /* renamed from: o  reason: collision with root package name */
    private int f45808o;
    @Nullable

    /* renamed from: p  reason: collision with root package name */
    private r f45809p;
    @Nullable

    /* renamed from: q  reason: collision with root package name */
    private Function0<Unit> f45810q;
    @Nullable

    /* renamed from: r  reason: collision with root package name */
    private Function0<Unit> f45811r;
    @Nullable

    /* renamed from: s  reason: collision with root package name */
    private Function0<Unit> f45812s;
    @NotNull

    /* renamed from: t  reason: collision with root package name */
    private String f45813t = "";
    @NotNull

    /* renamed from: u  reason: collision with root package name */
    private String f45814u = "";

    /* compiled from: CheckInSuccessDialog.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final CheckInSuccessDialog a(boolean z10, int i10, int i11, int i12, int i13, int i14, @NotNull String nextTaskDesc) {
            Intrinsics.checkNotNullParameter(nextTaskDesc, "nextTaskDesc");
            CheckInSuccessDialog checkInSuccessDialog = new CheckInSuccessDialog();
            Bundle bundle = new Bundle();
            bundle.putBoolean("isSpecialTitle", z10);
            bundle.putInt("currentBonus", i10);
            bundle.putInt("nextTaskBonus", i11);
            bundle.putString("nextTaskDesc", nextTaskDesc);
            bundle.putInt("completeNum", i12);
            bundle.putInt("sumNum", i13);
            bundle.putInt("countDown", i14);
            checkInSuccessDialog.setArguments(bundle);
            return checkInSuccessDialog;
        }

        private a() {
        }
    }

    /* compiled from: CheckInSuccessDialog.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class b extends d {
        b() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            CheckInSuccessDialog.this.dismiss();
            if (CheckInSuccessDialog.this.K() >= CheckInSuccessDialog.this.L()) {
                Function0<Unit> J = CheckInSuccessDialog.this.J();
                if (J != null) {
                    J.invoke();
                    return;
                }
                return;
            }
            Function0<Unit> I = CheckInSuccessDialog.this.I();
            if (I != null) {
                I.invoke();
            }
        }
    }

    /* compiled from: CheckInSuccessDialog.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class c extends d {
        c() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            CheckInSuccessDialog.this.dismiss();
            if (CheckInSuccessDialog.this.K() >= CheckInSuccessDialog.this.L()) {
                Function0<Unit> J = CheckInSuccessDialog.this.J();
                if (J != null) {
                    J.invoke();
                    return;
                }
                return;
            }
            Function0<Unit> M = CheckInSuccessDialog.this.M();
            if (M != null) {
                M.invoke();
            }
        }
    }

    private final void N() {
        u uVar = u.f51776a;
        this.f45813t = uVar.d(R$string.check_in_dialog_get_now);
        this.f45814u = uVar.e(R$string.check_in_dialog_get_now_watch_ad_nums, String.valueOf(this.f45803j), String.valueOf(this.f45804k));
        if (this.f45802i && this.f45803j == 0) {
            m().f38692m.setText(uVar.d(R$string.check_in_dialog_title));
            m().f38695p.setText(uVar.e(R$string.check_in_dialog_watch_all_ads, String.valueOf(this.f45804k)));
            b0.l(m().f38695p);
            b0.d(m().f38691l);
        } else {
            m().f38692m.setText(uVar.d(R$string.check_in_result_dialog_fragment_title));
            b0.d(m().f38695p);
            b0.l(m().f38691l);
        }
        m().f38685f.setText(this.f45814u);
        m().f38681b.setText(String.valueOf(this.f45805l));
        BaseTextView baseTextView = m().f38689j;
        StringBuilder sb2 = new StringBuilder();
        sb2.append('+');
        sb2.append(this.f45806m);
        baseTextView.setText(sb2.toString());
        int i10 = this.f45804k;
        if (i10 != 0 && this.f45803j < i10) {
            m().f38690k.setText(this.f45807n);
            return;
        }
        b0.d(m().f38694o);
        b0.d(m().f38688i);
        b0.d(m().f38689j);
        b0.d(m().f38690k);
        W();
    }

    private final void O() {
        m().f38687h.setOnClickListener(new b());
        m().f38684e.setOnClickListener(new c());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit S(CheckInSuccessDialog checkInSuccessDialog, int i10) {
        checkInSuccessDialog.U(i10);
        checkInSuccessDialog.V(true);
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit T(CheckInSuccessDialog checkInSuccessDialog) {
        checkInSuccessDialog.U(-1);
        checkInSuccessDialog.V(false);
        return Unit.f60915a;
    }

    @SuppressLint({"SetTextI18n"})
    private final void U(int i10) {
        if (i10 > 0) {
            BaseTextView baseTextView = m().f38686g;
            baseTextView.setText(this.f45813t + ' ' + i10 + 's');
            return;
        }
        m().f38686g.setText(this.f45813t);
        if (this.f45803j >= this.f45804k) {
            W();
        }
    }

    private final void V(boolean z10) {
        if (z10) {
            m().f38684e.setEnabled(false);
            m().f38684e.setAlpha(0.6f);
            return;
        }
        m().f38684e.setEnabled(true);
        m().f38684e.setAlpha(1.0f);
    }

    private final void W() {
        b0.d(m().f38683d);
        b0.d(m().f38685f);
        m().f38686g.setText(u.f51776a.d(R$string.check_in_dialog_check_more));
    }

    public final void H() {
        r rVar = this.f45809p;
        if (rVar != null) {
            r.a.b(rVar, null, 1, null);
            Unit unit = Unit.f60915a;
            q("cancelBtnCountDown");
        }
        this.f45809p = null;
    }

    @Nullable
    public final Function0<Unit> I() {
        return this.f45812s;
    }

    @Nullable
    public final Function0<Unit> J() {
        return this.f45811r;
    }

    public final int K() {
        return this.f45803j;
    }

    public final int L() {
        return this.f45804k;
    }

    @Nullable
    public final Function0<Unit> M() {
        return this.f45810q;
    }

    public final void P(@Nullable Function0<Unit> function0) {
        this.f45811r = function0;
    }

    public final void Q(@Nullable Function0<Unit> function0) {
        this.f45810q = function0;
    }

    public final void R() {
        if (this.f45803j < this.f45804k) {
            H();
            this.f45809p = CoroutineUtil.f48072a.d(this.f45808o, new Function1() { // from class: pi.a
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    Unit S;
                    S = CheckInSuccessDialog.S(CheckInSuccessDialog.this, ((Integer) obj).intValue());
                    return S;
                }
            }, new Function0() { // from class: pi.b
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    Unit T;
                    T = CheckInSuccessDialog.T(CheckInSuccessDialog.this);
                    return T;
                }
            });
        }
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseDialogFragment
    public int k() {
        return R$layout.dialog_check_in_success;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseDialogFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        boolean z10;
        int i10;
        int i11;
        int i12;
        int i13;
        super.onCreate(bundle);
        Bundle arguments = getArguments();
        int i14 = 0;
        if (arguments != null) {
            z10 = arguments.getBoolean("isSpecialTitle");
        } else {
            z10 = false;
        }
        this.f45802i = z10;
        Bundle arguments2 = getArguments();
        if (arguments2 != null) {
            i10 = arguments2.getInt("completeNum");
        } else {
            i10 = 0;
        }
        this.f45803j = i10;
        Bundle arguments3 = getArguments();
        if (arguments3 != null) {
            i11 = arguments3.getInt("sumNum");
        } else {
            i11 = 0;
        }
        this.f45804k = i11;
        Bundle arguments4 = getArguments();
        if (arguments4 != null) {
            i12 = arguments4.getInt("currentBonus");
        } else {
            i12 = 0;
        }
        this.f45805l = i12;
        Bundle arguments5 = getArguments();
        if (arguments5 != null) {
            i13 = arguments5.getInt("nextTaskBonus");
        } else {
            i13 = 0;
        }
        this.f45806m = i13;
        Bundle arguments6 = getArguments();
        this.f45807n = (arguments6 == null || (r3 = arguments6.getString("nextTaskDesc")) == null) ? "" : "";
        Bundle arguments7 = getArguments();
        if (arguments7 != null) {
            i14 = arguments7.getInt("countDown");
        }
        this.f45808o = i14;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseDialogFragment, androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnDismissListener
    public void onDismiss(@NotNull DialogInterface dialog) {
        Intrinsics.checkNotNullParameter(dialog, "dialog");
        super.onDismiss(dialog);
        r rVar = this.f45809p;
        if (rVar != null) {
            r.a.b(rVar, null, 1, null);
        }
        this.f45809p = null;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseDialogFragment, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        if (this.f45803j > 0) {
            R();
        }
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseDialogFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, bundle);
        N();
        O();
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseDialogFragment
    public int p() {
        return g.a(280.0f);
    }
}
