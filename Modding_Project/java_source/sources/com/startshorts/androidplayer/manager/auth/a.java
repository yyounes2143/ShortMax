package com.startshorts.androidplayer.manager.auth;

import android.app.Activity;
import android.content.Intent;
import com.hades.aar.auth.base.AuthType;
import com.startshorts.androidplayer.R$string;
import com.startshorts.androidplayer.bean.auth.AuthReason;
import com.startshorts.androidplayer.log.Logger;
import fk.p;
import fk.u;
import ja.f;
import ja.i;
import ja.j;
import java.lang.ref.WeakReference;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: BaseAuthManager.kt */
@Metadata
/* loaded from: classes6.dex */
public class a {
    @NotNull

    /* renamed from: j  reason: collision with root package name */
    public static final C0618a f42149j = new C0618a(null);
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private f f42150a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private ja.b f42151b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private j f42152c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private i f42153d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private AuthReason f42154e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private ka.j f42155f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private ke.b f42156g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private ke.a f42157h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private WeakReference<Activity> f42158i;

    /* compiled from: BaseAuthManager.kt */
    @Metadata
    /* renamed from: com.startshorts.androidplayer.manager.auth.a$a  reason: collision with other inner class name */
    /* loaded from: classes6.dex */
    public static final class C0618a {
        public /* synthetic */ C0618a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private C0618a() {
        }
    }

    /* compiled from: BaseAuthManager.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public /* synthetic */ class b {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[AuthReason.values().length];
            try {
                iArr[AuthReason.LOGIN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[AuthReason.BIND.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    private final void e() {
        this.f42154e = null;
        f fVar = this.f42150a;
        if (fVar != null) {
            fVar.q();
        }
        this.f42150a = null;
        ja.b bVar = this.f42151b;
        if (bVar != null) {
            bVar.q();
        }
        this.f42151b = null;
        j jVar = this.f42152c;
        if (jVar != null) {
            jVar.q();
        }
        this.f42152c = null;
        i iVar = this.f42153d;
        if (iVar != null) {
            iVar.q();
        }
        this.f42153d = null;
    }

    public void a(@NotNull AuthReason reason) {
        String str;
        Intrinsics.checkNotNullParameter(reason, "reason");
        m("authWithFacebook");
        e();
        this.f42154e = reason;
        p d10 = new p().d();
        m("init FacebookSdk took " + d10.b() + "ms");
        try {
            this.f42151b = new ja.b();
            Activity g10 = g();
            if (g10 != null) {
                ja.b bVar = this.f42151b;
                if (bVar != null) {
                    ii.j jVar = new ii.j(g10);
                    Activity g11 = g();
                    if (g11 != null) {
                        str = g11.getString(R$string.common_waiting);
                    } else {
                        str = null;
                    }
                    jVar.y(str);
                    bVar.p(jVar);
                }
                ja.b bVar2 = this.f42151b;
                if (bVar2 != null) {
                    bVar2.k(g10, false, this.f42155f);
                }
            }
        } catch (Exception e10) {
            f("authType(" + AuthType.FACEBOOK + ") errMsg(" + e10.getMessage() + ')');
        }
    }

    public void b(@NotNull AuthReason reason) {
        String str;
        Intrinsics.checkNotNullParameter(reason, "reason");
        m("authWithGoogle");
        e();
        this.f42154e = reason;
        try {
            this.f42150a = new f(u.f51776a.d(R$string.google_server_id), 1001);
            Activity g10 = g();
            if (g10 != null) {
                f fVar = this.f42150a;
                if (fVar != null) {
                    ii.j jVar = new ii.j(g10);
                    Activity g11 = g();
                    if (g11 != null) {
                        str = g11.getString(R$string.common_waiting);
                    } else {
                        str = null;
                    }
                    jVar.y(str);
                    fVar.p(jVar);
                }
                f fVar2 = this.f42150a;
                if (fVar2 != null) {
                    fVar2.k(g10, false, this.f42155f);
                }
            }
        } catch (Exception e10) {
            f("authType(" + AuthType.GOOGLE + ") errMsg(" + e10.getMessage() + ')');
        }
    }

    public void c(@NotNull AuthReason reason) {
        String str;
        Intrinsics.checkNotNullParameter(reason, "reason");
        m("authWithHuaWei");
        e();
        this.f42154e = reason;
        p d10 = new p().d();
        m("init HuaWei took " + d10.b() + "ms");
        try {
            this.f42153d = new i();
            Activity g10 = g();
            if (g10 != null) {
                i iVar = this.f42153d;
                if (iVar != null) {
                    ii.j jVar = new ii.j(g10);
                    Activity g11 = g();
                    if (g11 != null) {
                        str = g11.getString(R$string.common_waiting);
                    } else {
                        str = null;
                    }
                    jVar.y(str);
                    iVar.p(jVar);
                }
                i iVar2 = this.f42153d;
                if (iVar2 != null) {
                    iVar2.k(g10, false, this.f42155f);
                }
            }
        } catch (Exception e10) {
            f("authType(" + AuthType.HUAWEI + ") errMsg(" + e10.getMessage() + ')');
        }
    }

    public void d(@NotNull String otp, @NotNull AuthReason reason) {
        Intrinsics.checkNotNullParameter(otp, "otp");
        Intrinsics.checkNotNullParameter(reason, "reason");
        Activity g10 = g();
        if (g10 != null) {
            m("authWithPhone " + otp);
            j jVar = this.f42152c;
            if (jVar == null) {
                int i10 = b.$EnumSwitchMapping$0[reason.ordinal()];
                if (i10 != 1) {
                    if (i10 == 2) {
                        ke.a aVar = this.f42157h;
                        if (aVar != null) {
                            aVar.b(AuthType.PHONE_VERIFY, 3, "mPhoneAuth is null");
                            return;
                        }
                        return;
                    }
                    throw new NoWhenBranchMatchedException();
                }
                ke.b bVar = this.f42156g;
                if (bVar != null) {
                    bVar.b(AuthType.PHONE_VERIFY, 3, "mPhoneAuth is null");
                }
            } else if (jVar != null) {
                jVar.j(g10, otp, this.f42155f);
            }
        }
    }

    public final void f(@NotNull String error) {
        Intrinsics.checkNotNullParameter(error, "error");
        Logger.f41511a.e(i(), error);
    }

    @Nullable
    public final Activity g() {
        WeakReference<Activity> weakReference = this.f42158i;
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
    }

    @Nullable
    public final ke.a h() {
        return this.f42157h;
    }

    @NotNull
    public String i() {
        throw null;
    }

    @Nullable
    public final ke.b j() {
        return this.f42156g;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Nullable
    public final AuthReason k() {
        return this.f42154e;
    }

    public boolean l(@NotNull Activity activity, int i10, int i11, @Nullable Intent intent) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        m("handleActivityResult -> mGoogleAuth(" + this.f42150a + ") mFacebookAuth(" + this.f42151b + ") requestCode(" + i10 + ") resultCode(" + i11 + ") data(" + intent + ')');
        f fVar = this.f42150a;
        if (fVar != null) {
            if (fVar == null) {
                return false;
            }
            return fVar.x(activity, i10, i11, intent, this.f42155f);
        }
        ja.b bVar = this.f42151b;
        if (bVar != null) {
            if (bVar == null) {
                return false;
            }
            return bVar.w(activity, i10, i11, intent, this.f42155f);
        }
        i iVar = this.f42153d;
        if (iVar == null || iVar == null) {
            return false;
        }
        return iVar.v(activity, i10, i11, intent, this.f42155f);
    }

    public final void m(@NotNull String info) {
        Intrinsics.checkNotNullParameter(info, "info");
        Logger.f41511a.h(i(), info);
    }

    public void n() {
        Logger.f41511a.h("BaseAuthManager", "release");
        e();
        this.f42155f = null;
        this.f42156g = null;
        this.f42157h = null;
        WeakReference<Activity> weakReference = this.f42158i;
        if (weakReference != null) {
            weakReference.clear();
        }
        this.f42158i = null;
    }

    public void o(@NotNull String areaCode, @NotNull String phoneNumber, @NotNull AuthReason reason) {
        String str;
        Intrinsics.checkNotNullParameter(areaCode, "areaCode");
        Intrinsics.checkNotNullParameter(phoneNumber, "phoneNumber");
        Intrinsics.checkNotNullParameter(reason, "reason");
        m("sendWithPhone");
        e();
        this.f42154e = reason;
        try {
            this.f42152c = new j();
            Activity g10 = g();
            if (g10 != null) {
                j jVar = this.f42152c;
                if (jVar != null) {
                    ii.j jVar2 = new ii.j(g10);
                    Activity g11 = g();
                    if (g11 != null) {
                        str = g11.getString(R$string.common_waiting);
                    } else {
                        str = null;
                    }
                    jVar2.y(str);
                    jVar.p(jVar2);
                }
                j jVar3 = this.f42152c;
                if (jVar3 != null) {
                    jVar3.r(g10, areaCode, phoneNumber, this.f42155f);
                }
            }
        } catch (Exception e10) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("authType(");
            AuthType authType = AuthType.PHONE_SEND;
            sb2.append(authType);
            sb2.append(") errMsg(");
            sb2.append(e10.getMessage());
            sb2.append(')');
            f(sb2.toString());
            ka.j jVar4 = this.f42155f;
            if (jVar4 != null) {
                jVar4.b(authType, true, -1, e10.getMessage());
            }
        }
    }

    public final void p(@Nullable WeakReference<Activity> weakReference) {
        this.f42158i = weakReference;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void q(@Nullable ka.j jVar) {
        this.f42155f = jVar;
    }

    public final void r(@Nullable ke.a aVar) {
        this.f42157h = aVar;
    }

    public final void s(@Nullable ke.b bVar) {
        this.f42156g = bVar;
    }
}
