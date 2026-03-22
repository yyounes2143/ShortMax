package auth.b;

import android.app.Activity;
import com.google.firebase.auth.g;
import com.hades.aar.auth.base.AuthType;
import com.hades.aar.auth.base.AuthUser;
import ka.i;
import ka.j;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* loaded from: classes2.dex */
public final class a extends Lambda implements Function1 {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ i f2132d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ AuthType f2133e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ j f2134f;

    /* renamed from: g  reason: collision with root package name */
    public final /* synthetic */ Activity f2135g;

    /* renamed from: h  reason: collision with root package name */
    public final /* synthetic */ String f2136h;

    /* renamed from: i  reason: collision with root package name */
    public final /* synthetic */ AuthUser f2137i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(i iVar, Activity activity, AuthType authType, AuthUser authUser, String str, j jVar) {
        super(1);
        this.f2132d = iVar;
        this.f2133e = authType;
        this.f2134f = jVar;
        this.f2135g = activity;
        this.f2136h = str;
        this.f2137i = authUser;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        g gVar = (g) obj;
        String c10 = gVar.c();
        if (c10 != null && c10.length() != 0) {
            i iVar = this.f2132d;
            Activity activity = this.f2135g;
            AuthType authType = this.f2133e;
            String str = this.f2136h;
            String c11 = gVar.c();
            Intrinsics.checkNotNull(c11);
            iVar.d(activity, authType, str, c11, this.f2137i, true, this.f2134f);
        } else {
            i.o(this.f2132d, this.f2133e, true, 0, "token is null", false, this.f2134f, 20, null);
        }
        return Unit.f60915a;
    }
}
