package auth.b;

import android.app.Activity;
import com.google.firebase.auth.AuthResult;
import com.hades.aar.auth.base.AuthType;
import com.hades.aar.auth.base.AuthUser;
import ka.i;
import ka.j;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
/* loaded from: classes2.dex */
public final class b extends Lambda implements Function1 {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ i f2138d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ Activity f2139e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ AuthType f2140f;

    /* renamed from: g  reason: collision with root package name */
    public final /* synthetic */ AuthUser f2141g;

    /* renamed from: h  reason: collision with root package name */
    public final /* synthetic */ String f2142h;

    /* renamed from: i  reason: collision with root package name */
    public final /* synthetic */ j f2143i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(i iVar, Activity activity, AuthType authType, AuthUser authUser, String str, j jVar) {
        super(1);
        this.f2138d = iVar;
        this.f2139e = activity;
        this.f2140f = authType;
        this.f2141g = authUser;
        this.f2142h = str;
        this.f2143i = jVar;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        AuthResult authResult = (AuthResult) obj;
        this.f2138d.c(this.f2139e, this.f2140f, this.f2141g, this.f2142h, this.f2143i);
        return Unit.f60915a;
    }
}
