package ja;

import android.app.Activity;
import android.content.Intent;
import com.facebook.i;
import com.facebook.login.LoginManager;
import com.hades.aar.auth.base.AuthType;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata
/* loaded from: classes5.dex */
public final class b extends ka.i {
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    public static final v.b f60353g = new v.b();

    /* renamed from: d  reason: collision with root package name */
    public final com.facebook.i f60354d = i.b.a();

    /* renamed from: e  reason: collision with root package name */
    public final LoginManager f60355e = LoginManager.f16498j.c();

    /* renamed from: f  reason: collision with root package name */
    public final List f60356f = CollectionsKt.t("email", "public_profile");

    public static final String s(b bVar, String str) {
        bVar.getClass();
        return "http://graph.facebook.com/" + str + "/picture?type=large";
    }

    public static final boolean t(b bVar) {
        return bVar.f60701a;
    }

    public static final void u(b bVar, AuthType authType, ka.j jVar) {
        bVar.getClass();
        Intrinsics.checkNotNullParameter(authType, "authType");
        if (bVar.f60701a) {
            bVar.f60701a = false;
            ka.b bVar2 = bVar.f60702b;
            if (bVar2 != null) {
                bVar2.a();
            }
            if (jVar != null) {
                jVar.a(bVar.tag(), "auth cancelled");
                jVar.d(authType);
            }
        }
    }

    @Override // ka.i
    public void k(@NotNull Activity activity, boolean z10, @Nullable ka.j jVar) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        super.k(activity, z10, jVar);
        this.f60355e.x(this.f60354d, new v.d(this, jVar, z10, activity));
        this.f60355e.s(activity, this.f60356f);
    }

    @Override // ka.i
    public void q() {
        super.q();
        this.f60355e.M(this.f60354d);
    }

    @Override // ka.a
    @NotNull
    public String tag() {
        return "FaceBookAuth";
    }

    public boolean w(@NotNull Activity activity, int i10, int i11, @Nullable Intent intent, @Nullable ka.j jVar) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        if (this.f60701a) {
            return this.f60354d.onActivityResult(i10, i11, intent);
        }
        return false;
    }
}
