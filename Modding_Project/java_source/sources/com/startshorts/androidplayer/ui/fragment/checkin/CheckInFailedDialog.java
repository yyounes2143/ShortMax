package com.startshorts.androidplayer.ui.fragment.checkin;

import android.annotation.SuppressLint;
import android.os.Bundle;
import android.view.View;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.R$string;
import com.startshorts.androidplayer.databinding.DialogCheckInFailedBinding;
import com.startshorts.androidplayer.ui.fragment.base.BaseDialogFragment;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import fk.u;
import jk.b0;
import jk.g;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import yd.d;
/* compiled from: CheckInFailedDialog.kt */
@Metadata
/* loaded from: classes7.dex */
public final class CheckInFailedDialog extends BaseDialogFragment<DialogCheckInFailedBinding> {
    @NotNull

    /* renamed from: o  reason: collision with root package name */
    public static final a f45792o = new a(null);

    /* renamed from: i  reason: collision with root package name */
    private int f45793i;

    /* renamed from: j  reason: collision with root package name */
    private int f45794j;

    /* renamed from: k  reason: collision with root package name */
    private int f45795k;
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    private String f45796l;
    @Nullable

    /* renamed from: m  reason: collision with root package name */
    private Function0<Unit> f45797m;
    @Nullable

    /* renamed from: n  reason: collision with root package name */
    private Function0<Unit> f45798n;

    /* compiled from: CheckInFailedDialog.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final CheckInFailedDialog a(int i10, int i11, int i12, @NotNull String nextTaskDesc) {
            Intrinsics.checkNotNullParameter(nextTaskDesc, "nextTaskDesc");
            CheckInFailedDialog checkInFailedDialog = new CheckInFailedDialog();
            Bundle bundle = new Bundle();
            bundle.putInt("nextRewardsBonus", i10);
            bundle.putInt("completeNum", i11);
            bundle.putInt("sumNum", i12);
            bundle.putString("nextTaskDescription", nextTaskDesc);
            checkInFailedDialog.setArguments(bundle);
            return checkInFailedDialog;
        }

        private a() {
        }
    }

    /* compiled from: CheckInFailedDialog.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class b extends d {
        b() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            CheckInFailedDialog.this.dismiss();
            Function0<Unit> F = CheckInFailedDialog.this.F();
            if (F != null) {
                F.invoke();
            }
        }
    }

    /* compiled from: CheckInFailedDialog.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class c extends d {
        c() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            CheckInFailedDialog.this.dismiss();
            if (CheckInFailedDialog.this.G() == CheckInFailedDialog.this.H()) {
                Function0<Unit> F = CheckInFailedDialog.this.F();
                if (F != null) {
                    F.invoke();
                    return;
                }
                return;
            }
            Function0<Unit> I = CheckInFailedDialog.this.I();
            if (I != null) {
                I.invoke();
            }
        }
    }

    @SuppressLint({"SetTextI18n"})
    private final void J() {
        BaseTextView baseTextView = m().f38672i;
        StringBuilder sb2 = new StringBuilder();
        sb2.append('+');
        sb2.append(this.f45795k);
        baseTextView.setText(sb2.toString());
        m().f38673j.setText(this.f45796l);
        int i10 = this.f45793i;
        if (i10 >= this.f45794j) {
            b0.d(m().f38675l);
            b0.d(m().f38671h);
            b0.d(m().f38672i);
            b0.d(m().f38673j);
            M();
            return;
        }
        m().f38667d.setText(u.f51776a.e(R$string.check_in_dialog_get_now_watch_ad_nums, String.valueOf(i10), String.valueOf(this.f45794j)));
    }

    private final void K() {
        m().f38669f.setOnClickListener(new b());
        m().f38666c.setOnClickListener(new c());
    }

    private final void M() {
        b0.d(m().f38665b);
        b0.d(m().f38667d);
        m().f38668e.setText(u.f51776a.d(R$string.check_in_dialog_check_more));
    }

    @Nullable
    public final Function0<Unit> F() {
        return this.f45798n;
    }

    public final int G() {
        return this.f45793i;
    }

    public final int H() {
        return this.f45794j;
    }

    @Nullable
    public final Function0<Unit> I() {
        return this.f45797m;
    }

    public final void L(@Nullable Function0<Unit> function0) {
        this.f45797m = function0;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseDialogFragment
    public int k() {
        return R$layout.dialog_check_in_failed;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseDialogFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        int i10;
        int i11;
        String str;
        super.onCreate(bundle);
        Bundle arguments = getArguments();
        int i12 = 0;
        if (arguments != null) {
            i10 = arguments.getInt("completeNum");
        } else {
            i10 = 0;
        }
        this.f45793i = i10;
        Bundle arguments2 = getArguments();
        if (arguments2 != null) {
            i11 = arguments2.getInt("sumNum");
        } else {
            i11 = 0;
        }
        this.f45794j = i11;
        Bundle arguments3 = getArguments();
        if (arguments3 != null) {
            i12 = arguments3.getInt("nextRewardsBonus");
        }
        this.f45795k = i12;
        Bundle arguments4 = getArguments();
        if (arguments4 != null) {
            str = arguments4.getString("nextTaskDescription");
        } else {
            str = null;
        }
        this.f45796l = str;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseDialogFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, bundle);
        J();
        K();
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseDialogFragment
    public int p() {
        return g.a(280.0f);
    }
}
