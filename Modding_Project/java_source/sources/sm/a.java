package sm;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Color;
import android.util.Base64;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.view.ViewCompat;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import com.vungle.ads.internal.Constants;
import io.bidmachine.iab.utils.IabElementStyle;
/* loaded from: classes7.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    public static final int f66381a = Color.parseColor("#B4FFFFFF");

    /* renamed from: b  reason: collision with root package name */
    public static final int f66382b = Color.parseColor("#5c000000");

    /* renamed from: c  reason: collision with root package name */
    public static final int f66383c = Color.parseColor("#52000000");
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public static final IabElementStyle f66384d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public static final IabElementStyle f66385e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public static final IabElementStyle f66386f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public static final IabElementStyle f66387g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public static final IabElementStyle f66388h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public static final IabElementStyle f66389i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public static final IabElementStyle f66390j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public static final IabElementStyle f66391k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public static final IabElementStyle f66392l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public static final IabElementStyle f66393m;
    @NonNull

    /* renamed from: n  reason: collision with root package name */
    public static final IabElementStyle f66394n;
    @NonNull

    /* renamed from: o  reason: collision with root package name */
    public static final IabElementStyle f66395o;
    @NonNull

    /* renamed from: p  reason: collision with root package name */
    public static final IabElementStyle f66396p;
    @NonNull

    /* renamed from: q  reason: collision with root package name */
    public static final IabElementStyle f66397q;

    static {
        IabElementStyle iabElementStyle = new IabElementStyle();
        f66384d = iabElementStyle;
        iabElementStyle.W(5);
        iabElementStyle.r0(48);
        Float valueOf = Float.valueOf(2.0f);
        iabElementStyle.p0(valueOf);
        iabElementStyle.q0("cross");
        iabElementStyle.X(8, 8, 8, 8);
        Float valueOf2 = Float.valueOf(30.0f);
        iabElementStyle.u0(valueOf2);
        iabElementStyle.U(valueOf2);
        Float valueOf3 = Float.valueOf(3.0f);
        iabElementStyle.V(valueOf3);
        IabElementStyle iabElementStyle2 = new IabElementStyle();
        f66385e = iabElementStyle2;
        iabElementStyle2.W(5);
        iabElementStyle2.r0(48);
        iabElementStyle2.p0(valueOf);
        iabElementStyle2.q0("skip");
        iabElementStyle2.X(8, 8, 8, 8);
        iabElementStyle2.u0(valueOf2);
        iabElementStyle2.U(valueOf2);
        iabElementStyle2.V(valueOf3);
        IabElementStyle iabElementStyle3 = new IabElementStyle();
        f66388h = iabElementStyle3;
        iabElementStyle3.W(5);
        iabElementStyle3.r0(48);
        iabElementStyle3.p0(valueOf);
        iabElementStyle3.q0("circular");
        iabElementStyle3.X(8, 8, 8, 8);
        iabElementStyle3.u0(valueOf2);
        iabElementStyle3.U(valueOf2);
        iabElementStyle3.S(1);
        iabElementStyle3.V(valueOf3);
        IabElementStyle iabElementStyle4 = new IabElementStyle();
        f66389i = iabElementStyle4;
        iabElementStyle4.W(5);
        iabElementStyle4.r0(48);
        Float valueOf4 = Float.valueOf(16.0f);
        iabElementStyle4.Q(valueOf4);
        iabElementStyle4.p0(valueOf);
        iabElementStyle4.k0(12, 2, 12, 2);
        iabElementStyle4.O("%1.0f%");
        iabElementStyle4.q0(MimeTypes.BASE_TYPE_TEXT);
        iabElementStyle4.X(8, 8, 8, 8);
        iabElementStyle4.S(1);
        iabElementStyle4.V(valueOf3);
        IabElementStyle iabElementStyle5 = new IabElementStyle();
        f66387g = iabElementStyle5;
        iabElementStyle5.W(3);
        iabElementStyle5.r0(48);
        iabElementStyle5.p0(valueOf);
        iabElementStyle5.X(8, 8, 8, 8);
        iabElementStyle5.u0(valueOf2);
        iabElementStyle5.U(valueOf2);
        iabElementStyle5.V(valueOf3);
        IabElementStyle iabElementStyle6 = new IabElementStyle();
        f66386f = iabElementStyle6;
        iabElementStyle6.W(17);
        iabElementStyle6.r0(48);
        iabElementStyle6.p0(valueOf);
        iabElementStyle6.X(8, 8, 8, 8);
        iabElementStyle6.u0(valueOf2);
        iabElementStyle6.U(valueOf2);
        iabElementStyle6.s0(Boolean.FALSE);
        iabElementStyle6.V(valueOf3);
        IabElementStyle iabElementStyle7 = new IabElementStyle();
        f66394n = iabElementStyle7;
        iabElementStyle7.W(17);
        iabElementStyle7.r0(80);
        iabElementStyle7.P(0);
        iabElementStyle7.p0(valueOf3);
        iabElementStyle7.u0(-1);
        iabElementStyle7.U(3);
        iabElementStyle7.q0("linear");
        iabElementStyle7.V(valueOf3);
        IabElementStyle iabElementStyle8 = new IabElementStyle();
        f66393m = iabElementStyle8;
        iabElementStyle8.W(17);
        iabElementStyle8.r0(80);
        iabElementStyle8.Q(valueOf4);
        iabElementStyle8.p0(valueOf);
        iabElementStyle8.k0(12, 2, 12, 2);
        iabElementStyle8.O("%1.0f%");
        iabElementStyle8.q0(MimeTypes.BASE_TYPE_TEXT);
        iabElementStyle8.X(3, 3, 3, 3);
        iabElementStyle8.S(1);
        iabElementStyle8.V(valueOf3);
        IabElementStyle iabElementStyle9 = new IabElementStyle();
        f66395o = iabElementStyle9;
        iabElementStyle9.W(17);
        iabElementStyle9.r0(80);
        iabElementStyle9.p0(valueOf);
        iabElementStyle9.a0(Boolean.TRUE);
        iabElementStyle9.q0("circular");
        iabElementStyle9.X(8, 8, 8, 8);
        iabElementStyle9.u0(valueOf2);
        iabElementStyle9.U(valueOf2);
        iabElementStyle9.S(1);
        iabElementStyle9.V(valueOf3);
        IabElementStyle iabElementStyle10 = new IabElementStyle();
        f66390j = iabElementStyle10;
        iabElementStyle10.W(5);
        iabElementStyle10.r0(80);
        iabElementStyle10.Q(valueOf4);
        iabElementStyle10.p0(valueOf);
        iabElementStyle10.k0(16, 6, 16, 6);
        iabElementStyle10.q0(MimeTypes.BASE_TYPE_TEXT);
        iabElementStyle10.X(3, 3, 3, 3);
        iabElementStyle10.S(1);
        iabElementStyle10.V(valueOf3);
        IabElementStyle iabElementStyle11 = new IabElementStyle();
        f66391k = iabElementStyle11;
        iabElementStyle11.W(17);
        iabElementStyle11.r0(80);
        iabElementStyle11.P(0);
        iabElementStyle11.X(3, 3, 3, 3);
        IabElementStyle iabElementStyle12 = new IabElementStyle(iabElementStyle11);
        f66392l = iabElementStyle12;
        iabElementStyle12.X(0, 0, 0, 0);
        IabElementStyle iabElementStyle13 = new IabElementStyle();
        f66396p = iabElementStyle13;
        iabElementStyle13.W(1);
        iabElementStyle13.r0(16);
        iabElementStyle13.k0(8, 8, 8, 8);
        iabElementStyle13.p0(valueOf3);
        iabElementStyle13.u0(48);
        iabElementStyle13.U(48);
        IabElementStyle iabElementStyle14 = new IabElementStyle();
        f66397q = iabElementStyle14;
        iabElementStyle14.W(3);
        iabElementStyle14.r0(48);
        iabElementStyle14.P(Integer.valueOf((int) ViewCompat.MEASURED_STATE_MASK));
        iabElementStyle14.q0(Constants.TEMPLATE_TYPE_FULLSCREEN);
    }

    @Nullable
    public static Bitmap a(@NonNull String str) {
        byte[] decode = Base64.decode(str, 0);
        return BitmapFactory.decodeByteArray(decode, 0, decode.length);
    }

    @NonNull
    public static IabElementStyle b(@NonNull Context context, @Nullable IabElementStyle iabElementStyle) {
        if (iabElementStyle != null && ("crossfill".equals(iabElementStyle.F()) || "skipfill".equals(iabElementStyle.F()))) {
            IabElementStyle iabElementStyle2 = new IabElementStyle();
            iabElementStyle2.a0(Boolean.TRUE);
            return f66384d.g(iabElementStyle2);
        }
        return f66384d;
    }
}
