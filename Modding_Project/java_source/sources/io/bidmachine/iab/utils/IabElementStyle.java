package io.bidmachine.iab.utils;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.io.Serializable;
import sm.q;
/* loaded from: classes7.dex */
public class IabElementStyle implements Serializable {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private Integer f54660a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private Integer f54661b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private Boolean f54662c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private Boolean f54663d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private Integer f54664e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private Integer f54665f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private String f54666g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private Float f54667h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private Float f54668i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private Integer f54669j;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    private Integer f54670k;
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    private Integer f54671l;
    @Nullable

    /* renamed from: m  reason: collision with root package name */
    private Integer f54672m;
    @Nullable

    /* renamed from: n  reason: collision with root package name */
    private Integer f54673n;
    @Nullable

    /* renamed from: o  reason: collision with root package name */
    private Integer f54674o;
    @Nullable

    /* renamed from: p  reason: collision with root package name */
    private Integer f54675p;
    @Nullable

    /* renamed from: q  reason: collision with root package name */
    private Integer f54676q;
    @Nullable

    /* renamed from: r  reason: collision with root package name */
    private String f54677r;
    @Nullable

    /* renamed from: s  reason: collision with root package name */
    private Float f54678s;
    @Nullable

    /* renamed from: t  reason: collision with root package name */
    private Float f54679t;
    @Nullable

    /* renamed from: u  reason: collision with root package name */
    private Float f54680u;
    @Nullable

    /* renamed from: v  reason: collision with root package name */
    private Integer f54681v;
    @Nullable

    /* renamed from: w  reason: collision with root package name */
    private Float f54682w;

    public IabElementStyle() {
    }

    @NonNull
    public Integer A(@NonNull Context context) {
        Integer num = this.f54669j;
        if (num != null) {
            return Integer.valueOf(q.q(context, num.intValue()));
        }
        return 0;
    }

    @NonNull
    public Integer B(@NonNull Context context) {
        Integer num = this.f54670k;
        if (num != null) {
            return Integer.valueOf(q.q(context, num.intValue()));
        }
        return 0;
    }

    @NonNull
    public Integer C(@NonNull Context context) {
        Integer num = this.f54671l;
        if (num != null) {
            return Integer.valueOf(q.q(context, num.intValue()));
        }
        return 0;
    }

    @NonNull
    public Integer D() {
        Integer num = this.f54660a;
        if (num != null) {
            return num;
        }
        return Integer.valueOf(sm.a.f66381a);
    }

    @NonNull
    public Float E(@NonNull Context context) {
        Float f10 = this.f54678s;
        if (f10 != null) {
            return Float.valueOf(q.q(context, f10.floatValue()));
        }
        return Float.valueOf(0.0f);
    }

    @Nullable
    public String F() {
        return this.f54666g;
    }

    @NonNull
    public Integer G() {
        Integer num = this.f54665f;
        if (num != null) {
            return num;
        }
        return 48;
    }

    @NonNull
    public Integer H(@NonNull Context context) {
        Float f10 = this.f54679t;
        if (f10 != null) {
            if (f10.floatValue() == -1.0f) {
                return Integer.valueOf(this.f54679t.intValue());
            }
            if (this.f54679t.floatValue() == -2.0f) {
                return Integer.valueOf(this.f54679t.intValue());
            }
            return Integer.valueOf(q.q(context, this.f54679t.floatValue()));
        }
        return -2;
    }

    public boolean I() {
        if (this.f54661b != null) {
            return true;
        }
        return false;
    }

    public boolean J() {
        if (this.f54660a != null) {
            return true;
        }
        return false;
    }

    @NonNull
    public Boolean K() {
        Boolean bool = this.f54662c;
        if (bool != null) {
            return bool;
        }
        return Boolean.FALSE;
    }

    @NonNull
    public Boolean L() {
        Boolean bool = this.f54663d;
        if (bool != null) {
            return bool;
        }
        return Boolean.TRUE;
    }

    public void M(@Nullable IabElementStyle iabElementStyle) {
        if (iabElementStyle == null) {
            return;
        }
        Integer num = iabElementStyle.f54660a;
        if (num != null) {
            this.f54660a = num;
        }
        Integer num2 = iabElementStyle.f54661b;
        if (num2 != null) {
            this.f54661b = num2;
        }
        Boolean bool = iabElementStyle.f54662c;
        if (bool != null) {
            this.f54662c = bool;
        }
        Boolean bool2 = iabElementStyle.f54663d;
        if (bool2 != null) {
            this.f54663d = bool2;
        }
        Integer num3 = iabElementStyle.f54664e;
        if (num3 != null) {
            this.f54664e = num3;
        }
        Integer num4 = iabElementStyle.f54665f;
        if (num4 != null) {
            this.f54665f = num4;
        }
        String str = iabElementStyle.f54666g;
        if (str != null) {
            this.f54666g = str;
        }
        Float f10 = iabElementStyle.f54667h;
        if (f10 != null) {
            this.f54667h = f10;
        }
        Float f11 = iabElementStyle.f54668i;
        if (f11 != null) {
            this.f54668i = f11;
        }
        Integer num5 = iabElementStyle.f54669j;
        if (num5 != null) {
            this.f54669j = num5;
        }
        Integer num6 = iabElementStyle.f54670k;
        if (num6 != null) {
            this.f54670k = num6;
        }
        Integer num7 = iabElementStyle.f54671l;
        if (num7 != null) {
            this.f54671l = num7;
        }
        Integer num8 = iabElementStyle.f54672m;
        if (num8 != null) {
            this.f54672m = num8;
        }
        Integer num9 = iabElementStyle.f54673n;
        if (num9 != null) {
            this.f54673n = num9;
        }
        Integer num10 = iabElementStyle.f54675p;
        if (num10 != null) {
            this.f54675p = num10;
        }
        Integer num11 = iabElementStyle.f54674o;
        if (num11 != null) {
            this.f54674o = num11;
        }
        Integer num12 = iabElementStyle.f54676q;
        if (num12 != null) {
            this.f54676q = num12;
        }
        String str2 = iabElementStyle.f54677r;
        if (str2 != null) {
            this.f54677r = str2;
        }
        Float f12 = iabElementStyle.f54678s;
        if (f12 != null) {
            this.f54678s = f12;
        }
        Float f13 = iabElementStyle.f54679t;
        if (f13 != null) {
            this.f54679t = f13;
        }
        Float f14 = iabElementStyle.f54680u;
        if (f14 != null) {
            this.f54680u = f14;
        }
        Integer num13 = iabElementStyle.f54681v;
        if (num13 != null) {
            this.f54681v = num13;
        }
        Float f15 = iabElementStyle.f54682w;
        if (f15 != null) {
            this.f54682w = f15;
        }
    }

    public int N() {
        return G().intValue() | r().intValue();
    }

    public void O(@Nullable String str) {
        this.f54677r = str;
    }

    public void P(@Nullable Integer num) {
        this.f54661b = num;
    }

    public void Q(@Nullable Float f10) {
        this.f54682w = f10;
    }

    public void S(@Nullable Integer num) {
        this.f54681v = num;
    }

    public void U(@Nullable Number number) {
        Float f10;
        if (number != null) {
            f10 = Float.valueOf(number.floatValue());
        } else {
            f10 = null;
        }
        this.f54680u = f10;
    }

    public void V(@Nullable Float f10) {
        this.f54668i = f10;
    }

    public void W(@Nullable Integer num) {
        this.f54664e = num;
    }

    public void X(@Nullable Integer num, @Nullable Integer num2, @Nullable Integer num3, @Nullable Integer num4) {
        this.f54673n = num;
        this.f54674o = num2;
        this.f54675p = num3;
        this.f54676q = num4;
    }

    public void Y(@Nullable String str) {
        if (TextUtils.isEmpty(str)) {
            X(null, null, null, null);
            return;
        }
        String[] split = str.split(" ");
        if (split.length == 1) {
            int intValue = q.p(split[0]).intValue();
            X(Integer.valueOf(intValue), Integer.valueOf(intValue), Integer.valueOf(intValue), Integer.valueOf(intValue));
        } else if (split.length == 2) {
            int intValue2 = q.p(split[0]).intValue();
            int intValue3 = q.p(split[1]).intValue();
            X(Integer.valueOf(intValue3), Integer.valueOf(intValue2), Integer.valueOf(intValue3), Integer.valueOf(intValue2));
        } else if (split.length == 3) {
            int intValue4 = q.p(split[0]).intValue();
            int intValue5 = q.p(split[1]).intValue();
            X(Integer.valueOf(intValue5), Integer.valueOf(intValue4), Integer.valueOf(intValue5), Integer.valueOf(q.p(split[2]).intValue()));
        } else if (split.length == 4) {
            X(Integer.valueOf(q.p(split[3]).intValue()), Integer.valueOf(q.p(split[0]).intValue()), Integer.valueOf(q.p(split[1]).intValue()), Integer.valueOf(q.p(split[2]).intValue()));
        }
    }

    public void Z(@Nullable Float f10) {
        this.f54667h = f10;
    }

    public void a0(@Nullable Boolean bool) {
        this.f54662c = bool;
    }

    public void b(@NonNull FrameLayout.LayoutParams layoutParams) {
        layoutParams.gravity = N();
    }

    public void d(@NonNull Context context, @NonNull ViewGroup.MarginLayoutParams marginLayoutParams) {
        marginLayoutParams.leftMargin = t(context).intValue();
        marginLayoutParams.topMargin = v(context).intValue();
        marginLayoutParams.rightMargin = u(context).intValue();
        marginLayoutParams.bottomMargin = s(context).intValue();
    }

    public void e(@NonNull Context context, @NonNull View view) {
        view.setPadding(A(context).intValue(), C(context).intValue(), B(context).intValue(), z(context).intValue());
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x0013, code lost:
        if (r0 != 17) goto L8;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void f(@androidx.annotation.NonNull android.widget.RelativeLayout.LayoutParams r4) {
        /*
            r3 = this;
            java.lang.Integer r0 = r3.r()
            int r0 = r0.intValue()
            r1 = 1
            r2 = 17
            if (r0 == r1) goto L22
            r1 = 3
            if (r0 == r1) goto L1c
            r1 = 5
            if (r0 == r1) goto L16
            if (r0 == r2) goto L22
            goto L27
        L16:
            r0 = 11
            r4.addRule(r0)
            goto L27
        L1c:
            r0 = 9
            r4.addRule(r0)
            goto L27
        L22:
            r0 = 14
            r4.addRule(r0)
        L27:
            java.lang.Integer r0 = r3.G()
            int r0 = r0.intValue()
            r1 = 16
            if (r0 == r1) goto L4a
            if (r0 == r2) goto L4a
            r1 = 48
            if (r0 == r1) goto L44
            r1 = 80
            if (r0 == r1) goto L3e
            goto L4f
        L3e:
            r0 = 12
            r4.addRule(r0)
            goto L4f
        L44:
            r0 = 10
            r4.addRule(r0)
            goto L4f
        L4a:
            r0 = 15
            r4.addRule(r0)
        L4f:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.iab.utils.IabElementStyle.f(android.widget.RelativeLayout$LayoutParams):void");
    }

    @NonNull
    public IabElementStyle g(@Nullable IabElementStyle iabElementStyle) {
        IabElementStyle iabElementStyle2 = new IabElementStyle();
        iabElementStyle2.M(this);
        iabElementStyle2.M(iabElementStyle);
        return iabElementStyle2;
    }

    @Nullable
    public String h() {
        return this.f54677r;
    }

    @NonNull
    public Integer i() {
        Integer num = this.f54661b;
        if (num != null) {
            return num;
        }
        return Integer.valueOf(sm.a.f66383c);
    }

    @NonNull
    public Float j(@NonNull Context context) {
        Float f10 = this.f54682w;
        if (f10 != null) {
            return Float.valueOf(q.q(context, f10.floatValue()));
        }
        return Float.valueOf(q.q(context, 16.0f));
    }

    @NonNull
    public Integer k() {
        Integer num = this.f54681v;
        if (num != null) {
            return num;
        }
        return 0;
    }

    public void k0(@Nullable Integer num, @Nullable Integer num2, @Nullable Integer num3, @Nullable Integer num4) {
        this.f54669j = num;
        this.f54671l = num2;
        this.f54670k = num3;
        this.f54672m = num4;
    }

    public void l0(@Nullable String str) {
        if (TextUtils.isEmpty(str)) {
            k0(null, null, null, null);
            return;
        }
        String[] split = str.split(" ");
        if (split.length == 1) {
            int intValue = q.p(split[0]).intValue();
            k0(Integer.valueOf(intValue), Integer.valueOf(intValue), Integer.valueOf(intValue), Integer.valueOf(intValue));
        } else if (split.length == 2) {
            int intValue2 = q.p(split[0]).intValue();
            int intValue3 = q.p(split[1]).intValue();
            k0(Integer.valueOf(intValue3), Integer.valueOf(intValue2), Integer.valueOf(intValue3), Integer.valueOf(intValue2));
        } else if (split.length == 3) {
            int intValue4 = q.p(split[0]).intValue();
            int intValue5 = q.p(split[1]).intValue();
            k0(Integer.valueOf(intValue5), Integer.valueOf(intValue4), Integer.valueOf(intValue5), Integer.valueOf(q.p(split[2]).intValue()));
        } else if (split.length == 4) {
            k0(Integer.valueOf(q.p(split[3]).intValue()), Integer.valueOf(q.p(split[0]).intValue()), Integer.valueOf(q.p(split[1]).intValue()), Integer.valueOf(q.p(split[2]).intValue()));
        }
    }

    @NonNull
    public Integer n(@NonNull Context context) {
        Float f10 = this.f54680u;
        if (f10 != null) {
            if (f10.floatValue() == -1.0f) {
                return Integer.valueOf(this.f54680u.intValue());
            }
            if (this.f54680u.floatValue() == -2.0f) {
                return Integer.valueOf(this.f54680u.intValue());
            }
            return Integer.valueOf(q.q(context, this.f54680u.floatValue()));
        }
        return -2;
    }

    public void o0(@Nullable Integer num) {
        this.f54660a = num;
    }

    public void p0(@Nullable Float f10) {
        this.f54678s = f10;
    }

    @Nullable
    public Float q() {
        return this.f54668i;
    }

    public void q0(@Nullable String str) {
        this.f54666g = str;
    }

    @NonNull
    public Integer r() {
        Integer num = this.f54664e;
        if (num != null) {
            return num;
        }
        return 3;
    }

    public void r0(@Nullable Integer num) {
        this.f54665f = num;
    }

    @NonNull
    public Integer s(@NonNull Context context) {
        Integer num = this.f54676q;
        if (num != null) {
            return Integer.valueOf(q.q(context, num.intValue()));
        }
        return 0;
    }

    public void s0(@Nullable Boolean bool) {
        this.f54663d = bool;
    }

    @NonNull
    public Integer t(@NonNull Context context) {
        Integer num = this.f54673n;
        if (num != null) {
            return Integer.valueOf(q.q(context, num.intValue()));
        }
        return 0;
    }

    @NonNull
    public Integer u(@NonNull Context context) {
        Integer num = this.f54675p;
        if (num != null) {
            return Integer.valueOf(q.q(context, num.intValue()));
        }
        return 0;
    }

    public void u0(@Nullable Number number) {
        Float f10;
        if (number != null) {
            f10 = Float.valueOf(number.floatValue());
        } else {
            f10 = null;
        }
        this.f54679t = f10;
    }

    @NonNull
    public Integer v(@NonNull Context context) {
        Integer num = this.f54674o;
        if (num != null) {
            return Integer.valueOf(q.q(context, num.intValue()));
        }
        return 0;
    }

    @NonNull
    public Float y() {
        Float f10 = this.f54667h;
        if (f10 != null) {
            return f10;
        }
        return Float.valueOf(1.0f);
    }

    @NonNull
    public Integer z(@NonNull Context context) {
        Integer num = this.f54672m;
        if (num != null) {
            return Integer.valueOf(q.q(context, num.intValue()));
        }
        return 0;
    }

    public IabElementStyle(@Nullable IabElementStyle iabElementStyle) {
        M(iabElementStyle);
    }
}
