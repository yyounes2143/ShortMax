package sm;

import android.content.Context;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import io.bidmachine.iab.utils.IabElementStyle;
import io.bidmachine.iab.vast.view.CircleCountdownView;
import io.bidmachine.iab.vast.view.LinearCountdownView;
import io.bidmachine.iab.vast.view.TextCountdownView;
/* loaded from: classes7.dex */
public class l extends i<View> {
    public l(@Nullable View.OnClickListener onClickListener) {
        super(onClickListener);
    }

    @Override // sm.i
    @NonNull
    View h(@NonNull Context context, @NonNull IabElementStyle iabElementStyle) {
        if (!MimeTypes.BASE_TYPE_TEXT.equals(iabElementStyle.F()) && !"text-reverse".equals(iabElementStyle.F())) {
            if (!"circular".equals(iabElementStyle.F()) && !"circular-reverse".equals(iabElementStyle.F())) {
                return new LinearCountdownView(context);
            }
            return new CircleCountdownView(context);
        }
        return new TextCountdownView(context);
    }

    @Override // sm.i
    @NonNull
    protected IabElementStyle j(@NonNull Context context, @Nullable IabElementStyle iabElementStyle) {
        if (iabElementStyle != null) {
            if (!MimeTypes.BASE_TYPE_TEXT.equals(iabElementStyle.F()) && !"text-reverse".equals(iabElementStyle.F())) {
                if ("circular".equals(iabElementStyle.F()) || "circular-reverse".equals(iabElementStyle.F())) {
                    return a.f66395o;
                }
            } else {
                return a.f66393m;
            }
        }
        return a.f66394n;
    }

    public void r(float f10, int i10, int i11) {
        boolean z10;
        IabElementStyle iabElementStyle = this.f66439c;
        if (iabElementStyle == null) {
            return;
        }
        int i12 = 0;
        if (iabElementStyle.F() != null && this.f66439c.F().endsWith("reverse")) {
            z10 = true;
        } else {
            z10 = false;
        }
        T t10 = this.f66438b;
        if (t10 instanceof TextCountdownView) {
            TextCountdownView textCountdownView = (TextCountdownView) t10;
            if (i11 == 0) {
                textCountdownView.setText("");
                return;
            }
            if (z10) {
                i10 = i11 - i10;
            }
            textCountdownView.setRemaining(Math.max(1, i10));
        } else if (t10 instanceof CircleCountdownView) {
            CircleCountdownView circleCountdownView = (CircleCountdownView) t10;
            if (z10) {
                if (i11 != 0) {
                    i12 = Math.max(1, i11 - i10);
                }
                circleCountdownView.g(f10, i12);
                return;
            }
            circleCountdownView.g(100.0f - f10, i10);
        } else if (t10 instanceof LinearCountdownView) {
            LinearCountdownView linearCountdownView = (LinearCountdownView) t10;
            if (z10) {
                f10 = 100.0f - f10;
            }
            linearCountdownView.b(f10);
        }
    }
}
