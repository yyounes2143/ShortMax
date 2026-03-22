package tj;

import android.view.View;
import android.view.ViewStub;
import androidx.databinding.ViewStubProxy;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.manager.configure.abtest.ABTestFactory;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: PaymentBtnStubUtil.kt */
@Metadata
/* loaded from: classes7.dex */
public final class b {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final b f67381a = new b();

    private b() {
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Nullable
    public final a a(@NotNull ViewStubProxy stub) {
        int i10;
        View view;
        Intrinsics.checkNotNullParameter(stub, "stub");
        String abTestValue = ABTestFactory.f42224a.x1().abTestValue();
        switch (abTestValue.hashCode()) {
            case 49:
                if (abTestValue.equals("1")) {
                    i10 = R$layout.viewstub_paymentbtn_def;
                    break;
                }
                i10 = R$layout.viewstub_paymentbtn_def;
                break;
            case 50:
                if (abTestValue.equals("2")) {
                    i10 = R$layout.viewstub_paymentbtn_2;
                    break;
                }
                i10 = R$layout.viewstub_paymentbtn_def;
                break;
            case 51:
                if (abTestValue.equals("3")) {
                    i10 = R$layout.viewstub_paymentbtn_3;
                    break;
                }
                i10 = R$layout.viewstub_paymentbtn_def;
                break;
            case 52:
                if (abTestValue.equals("4")) {
                    i10 = R$layout.viewstub_paymentbtn_def;
                    break;
                }
                i10 = R$layout.viewstub_paymentbtn_def;
                break;
            default:
                i10 = R$layout.viewstub_paymentbtn_def;
                break;
        }
        ViewStub viewStub = stub.getViewStub();
        if (viewStub != null) {
            viewStub.setLayoutResource(i10);
        }
        ViewStub viewStub2 = stub.getViewStub();
        if (viewStub2 != null) {
            view = viewStub2.inflate();
        } else {
            view = null;
        }
        if (!(view instanceof a)) {
            return null;
        }
        return (a) view;
    }
}
