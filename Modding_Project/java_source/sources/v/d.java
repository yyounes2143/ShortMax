package v;

import android.app.Activity;
import android.os.Bundle;
import com.facebook.AccessToken;
import com.facebook.FacebookException;
import com.facebook.GraphRequest;
import com.facebook.b0;
import com.facebook.k;
import com.facebook.login.r;
import com.google.firebase.auth.AuthCredential;
import com.hades.aar.auth.base.AuthType;
import com.hades.aar.auth.base.AuthUser;
import ka.i;
import ka.j;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public final class d implements k {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ ja.b f68640a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ j f68641b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ boolean f68642c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ Activity f68643d;

    public d(ja.b bVar, j jVar, boolean z10, Activity activity) {
        this.f68640a = bVar;
        this.f68641b = jVar;
        this.f68642c = z10;
        this.f68643d = activity;
    }

    public static final void c(ja.b bVar, j jVar, Activity activity, AuthCredential authCredential, AccessToken accessToken, JSONObject jSONObject, b0 b0Var) {
        AuthUser authUser = new AuthUser();
        if (jSONObject != null) {
            try {
                if (jSONObject.has("id")) {
                    String string = jSONObject.getString("id");
                    Intrinsics.checkNotNullExpressionValue(string, "`object`.getString(FIELD_ID)");
                    authUser.b(ja.b.s(bVar, string));
                }
            } catch (JSONException e10) {
                if (jVar != null) {
                    String tag = bVar.tag();
                    jVar.a(tag, "parse FacebookResponse failed -> " + e10.getMessage());
                }
            }
        }
        if (jSONObject != null && jSONObject.has("name")) {
            authUser.f(jSONObject.getString("name"));
        }
        if (jSONObject != null && jSONObject.has("gender")) {
            authUser.e(jSONObject.getString("gender"));
        }
        if (jSONObject != null && jSONObject.has("birthday")) {
            authUser.d(jSONObject.getString("birthday"));
        }
        bVar.b(activity, AuthType.FACEBOOK, authCredential, authUser, accessToken.m(), jVar);
    }

    @Override // com.facebook.k
    public final void a(FacebookException error) {
        Intrinsics.checkNotNullParameter(error, "error");
        i.o(this.f68640a, AuthType.FACEBOOK, false, 0, error.getMessage(), false, this.f68641b, 20, null);
    }

    @Override // com.facebook.k
    /* renamed from: b */
    public final void onSuccess(r result) {
        Intrinsics.checkNotNullParameter(result, "result");
        if (!ja.b.t(this.f68640a)) {
            return;
        }
        final AccessToken a10 = result.a();
        final AuthCredential a11 = com.google.firebase.auth.e.a(a10.m());
        Intrinsics.checkNotNullExpressionValue(a11, "getCredential(accessToken.token)");
        if (!this.f68642c) {
            this.f68640a.b(this.f68643d, AuthType.FACEBOOK, a11, null, a10.m(), this.f68641b);
            return;
        }
        GraphRequest.c cVar = GraphRequest.f14841n;
        final ja.b bVar = this.f68640a;
        final j jVar = this.f68641b;
        final Activity activity = this.f68643d;
        GraphRequest y10 = cVar.y(a10, new GraphRequest.d() { // from class: v.c
            @Override // com.facebook.GraphRequest.d
            public final void a(JSONObject jSONObject, b0 b0Var) {
                d.c(ja.b.this, jVar, activity, a11, a10, jSONObject, b0Var);
            }
        });
        Bundle bundle = new Bundle();
        bundle.putString("fields", "id,name,gender,birthday");
        y10.H(bundle);
        y10.l();
    }

    @Override // com.facebook.k
    public final void onCancel() {
        ja.b.u(this.f68640a, AuthType.FACEBOOK, this.f68641b);
    }
}
