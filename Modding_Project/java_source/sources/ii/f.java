package ii;

import android.content.Context;
import android.view.View;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.databinding.DialogMergeTouristFailedBinding;
import com.startshorts.androidplayer.utils.DeviceUtil;
import fk.z;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: MergeTouristFailedDialog.kt */
@Metadata
/* loaded from: classes7.dex */
public final class f extends fi.a<DialogMergeTouristFailedBinding> {
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    public static final a f53427e = new a(null);
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private Function0<Unit> f53428d;

    /* compiled from: MergeTouristFailedDialog.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: MergeTouristFailedDialog.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class b extends yd.d {
        b() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            f.this.dismiss();
        }
    }

    /* compiled from: MergeTouristFailedDialog.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class c extends yd.d {
        c() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            f.this.v().invoke();
            f.this.dismiss();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f(@NotNull Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        this.f53428d = new Function0() { // from class: ii.e
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                Unit w10;
                w10 = f.w();
                return w10;
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit w() {
        return Unit.f60915a;
    }

    @Override // fi.a
    public int g() {
        return R$layout.dialog_merge_tourist_failed;
    }

    @Override // fi.a
    @NotNull
    public String k() {
        return "MergeTouristFailedDialog";
    }

    @Override // fi.a
    public int n() {
        return DeviceUtil.f48146a.G() - (z.f51786a.p() * 2);
    }

    @Override // fi.a
    public void p() {
        setCanceledOnTouchOutside(false);
        i().f39180a.setOnClickListener(new b());
        i().f39182c.setOnClickListener(new c());
    }

    @NotNull
    public final Function0<Unit> v() {
        return this.f53428d;
    }

    public final void x(@NotNull Function0<Unit> function0) {
        Intrinsics.checkNotNullParameter(function0, "<set-?>");
        this.f53428d = function0;
    }
}
