package io.bidmachine;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.explorestack.protobuf.Any;
import com.explorestack.protobuf.adcom.Context;
import com.mbridge.msdk.MBridgeConstans;
import io.bidmachine.protobuf.RegsCcpaExtension;
import io.bidmachine.protobuf.sdk.User;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: UserRestrictionParams.java */
/* loaded from: classes7.dex */
public final class v5 implements lp.d {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private String f58698a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private Boolean f58699b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private Boolean f58700c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private Boolean f58701d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private String f58702e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private String f58703f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private List<Integer> f58704g;

    @Nullable
    private String i() {
        x3 k10 = j2.e().k();
        return (String) io.bidmachine.core.g.c0(this.f58698a, k10.e(), k10.g());
    }

    private boolean o() {
        Boolean bool = this.f58701d;
        if (bool != null && bool.booleanValue()) {
            return true;
        }
        return false;
    }

    private boolean w() {
        x3 k10 = j2.e().k();
        Boolean bool = (Boolean) io.bidmachine.core.g.c0(this.f58699b, k10.d(), k10.f());
        if (bool != null && bool.booleanValue()) {
            return true;
        }
        return false;
    }

    @Override // lp.d
    public boolean a() {
        return !o();
    }

    @Override // lp.d
    public boolean b() {
        if (!o() && !q()) {
            return true;
        }
        return false;
    }

    @Override // lp.d
    public boolean c() {
        if (!o() && !q()) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void d(@NonNull Context.Regs.Builder builder) {
        builder.setCoppa(o());
        builder.setGdpr(w());
        String m10 = m();
        if (!TextUtils.isEmpty(m10)) {
            builder.addExtProto(Any.pack(RegsCcpaExtension.newBuilder().setUsPrivacy(m10).build()));
        }
        String k10 = k();
        if (!TextUtils.isEmpty(k10)) {
            builder.setGpp(k10);
        }
        List<Integer> j10 = j();
        if (!io.bidmachine.core.g.I(j10)) {
            builder.addAllGppSid(j10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void e(@NonNull Context.User.Builder builder) {
        builder.setConsent(l());
    }

    public boolean f() {
        return !o();
    }

    public boolean g() {
        if (!o() && !q()) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void h(@NonNull User.Builder builder) {
        builder.setCoppa(o());
        builder.setGdpr(w());
        builder.setConsent(l());
        String m10 = m();
        if (!TextUtils.isEmpty(m10)) {
            builder.setCcpa(m10);
        }
        String k10 = k();
        if (!TextUtils.isEmpty(k10)) {
            builder.setGpp(k10);
        }
        List<Integer> j10 = j();
        if (!io.bidmachine.core.g.I(j10)) {
            builder.addAllGppSid(j10);
        }
    }

    @Nullable
    public List<Integer> j() {
        return (List) io.bidmachine.core.g.b0(this.f58704g, j2.e().k().h());
    }

    @Nullable
    public String k() {
        return (String) io.bidmachine.core.g.b0(this.f58703f, j2.e().k().b());
    }

    @NonNull
    public String l() {
        String i10 = i();
        if (TextUtils.isEmpty(i10)) {
            if (n()) {
                return "1";
            }
            return MBridgeConstans.ENDCARD_URL_TYPE_PL;
        }
        return i10;
    }

    @Nullable
    public String m() {
        return (String) io.bidmachine.core.g.b0(this.f58702e, j2.e().k().c());
    }

    public boolean n() {
        Boolean bool = this.f58700c;
        if (bool != null && bool.booleanValue()) {
            return true;
        }
        return false;
    }

    @VisibleForTesting
    boolean p() {
        if (!n() && TextUtils.isEmpty(i())) {
            return false;
        }
        return true;
    }

    public boolean q() {
        if (w() && !p()) {
            return true;
        }
        return false;
    }

    @NonNull
    public v5 r(boolean z10, @Nullable String str) {
        this.f58698a = str;
        this.f58700c = Boolean.valueOf(z10);
        return this;
    }

    @NonNull
    public v5 s(@Nullable Boolean bool) {
        this.f58701d = bool;
        return this;
    }

    @NonNull
    public v5 t(@Nullable String str, @Nullable List<Integer> list) {
        this.f58703f = str;
        this.f58704g = list;
        return this;
    }

    @NonNull
    public v5 u(@Nullable Boolean bool) {
        this.f58699b = bool;
        return this;
    }

    @NonNull
    public v5 v(@Nullable String str) {
        this.f58702e = str;
        return this;
    }
}
