package ka;

import android.app.Activity;
import android.util.Log;
import com.google.android.gms.tasks.OnCanceledListener;
import com.google.android.gms.tasks.OnFailureListener;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.android.gms.tasks.Task;
import com.google.firebase.auth.AuthCredential;
import com.google.firebase.auth.AuthResult;
import com.google.firebase.auth.FirebaseAuth;
import com.google.firebase.auth.FirebaseUser;
import com.hades.aar.auth.base.AuthType;
import com.hades.aar.auth.base.AuthUser;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata
/* loaded from: classes5.dex */
public abstract class i implements a {

    /* renamed from: a  reason: collision with root package name */
    public boolean f60701a;

    /* renamed from: b  reason: collision with root package name */
    public b f60702b;

    /* renamed from: c  reason: collision with root package name */
    public FirebaseAuth f60703c;

    public static final void e(i iVar, AuthType authType, j jVar) {
        o(iVar, authType, true, 0, "Request cancelled", false, jVar, 20, null);
    }

    public static final void f(i iVar, AuthType authType, j jVar, Exception e10) {
        Intrinsics.checkNotNullParameter(e10, "e");
        o(iVar, authType, true, 0, e10.getMessage(), false, jVar, 20, null);
    }

    public static final void g(Function1 function1, Object obj) {
        function1.invoke(obj);
    }

    public static final void l(i iVar, AuthType authType, j jVar) {
        o(iVar, authType, true, 0, "Request cancelled", false, jVar, 20, null);
    }

    public static final void m(i iVar, AuthType authType, j jVar, Exception e10) {
        Intrinsics.checkNotNullParameter(e10, "e");
        o(iVar, authType, true, 0, e10.getMessage(), false, jVar, 20, null);
    }

    public static final void n(Function1 function1, Object obj) {
        function1.invoke(obj);
    }

    public static void o(i iVar, AuthType authType, boolean z10, int i10, String str, boolean z11, j jVar, int i11, Object obj) {
        if (obj == null) {
            if ((i11 & 4) != 0) {
                i10 = -1;
            }
            if ((i11 & 16) != 0) {
                z11 = true;
            }
            iVar.getClass();
            Intrinsics.checkNotNullParameter(authType, "authType");
            if (iVar.f60701a) {
                if (z11) {
                    iVar.f60701a = false;
                }
                b bVar = iVar.f60702b;
                if (bVar != null) {
                    bVar.a();
                }
                if (jVar != null) {
                    String tag = iVar.tag();
                    jVar.a(tag, "auth failed -> authType(" + authType + ") firebaseError(" + z10 + ") errMsg(" + str + ')');
                    jVar.b(authType, z10, i10, str);
                    return;
                }
                return;
            }
            return;
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: handleAuthFailed");
    }

    public final void a() {
        this.f60701a = true;
        b bVar = this.f60702b;
        if (bVar != null) {
            bVar.b();
        }
    }

    public final void b(Activity activity, final AuthType authType, AuthCredential credential, AuthUser authUser, String str, final j jVar) {
        Task<AuthResult> k10;
        Task<AuthResult> addOnCanceledListener;
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(authType, "authType");
        Intrinsics.checkNotNullParameter(credential, "credential");
        FirebaseAuth firebaseAuth = this.f60703c;
        if (firebaseAuth == null) {
            o(this, authType, true, 0, "mFirebaseAuth is null", false, jVar, 20, null);
        } else if (this.f60701a && (k10 = firebaseAuth.k(credential)) != null) {
            final auth.b.b bVar = new auth.b.b(this, activity, authType, authUser, str, jVar);
            Task<AuthResult> addOnSuccessListener = k10.addOnSuccessListener(new OnSuccessListener() { // from class: ka.c
                @Override // com.google.android.gms.tasks.OnSuccessListener
                public final void onSuccess(Object obj) {
                    i.n(Function1.this, obj);
                }
            });
            if (addOnSuccessListener != null && (addOnCanceledListener = addOnSuccessListener.addOnCanceledListener(new OnCanceledListener() { // from class: ka.d
                @Override // com.google.android.gms.tasks.OnCanceledListener
                public final void onCanceled() {
                    i.l(i.this, authType, jVar);
                }
            })) != null) {
                addOnCanceledListener.addOnFailureListener(new OnFailureListener() { // from class: ka.e
                    @Override // com.google.android.gms.tasks.OnFailureListener
                    public final void onFailure(Exception exc) {
                        i.m(i.this, authType, jVar, exc);
                    }
                });
            }
        }
    }

    public final void c(Activity activity, final AuthType authType, AuthUser authUser, String str, final j jVar) {
        FirebaseUser firebaseUser;
        if (!this.f60701a) {
            return;
        }
        FirebaseAuth firebaseAuth = this.f60703c;
        if (firebaseAuth != null) {
            firebaseUser = firebaseAuth.c();
        } else {
            firebaseUser = null;
        }
        if (firebaseUser != null) {
            Task<com.google.firebase.auth.g> a10 = firebaseUser.a(true);
            final auth.b.a aVar = new auth.b.a(this, activity, authType, authUser, str, jVar);
            a10.addOnSuccessListener(new OnSuccessListener() { // from class: ka.f
                @Override // com.google.android.gms.tasks.OnSuccessListener
                public final void onSuccess(Object obj) {
                    i.g(Function1.this, obj);
                }
            }).addOnCanceledListener(new OnCanceledListener() { // from class: ka.g
                @Override // com.google.android.gms.tasks.OnCanceledListener
                public final void onCanceled() {
                    i.e(i.this, authType, jVar);
                }
            }).addOnFailureListener(new OnFailureListener() { // from class: ka.h
                @Override // com.google.android.gms.tasks.OnFailureListener
                public final void onFailure(Exception exc) {
                    i.f(i.this, authType, jVar, exc);
                }
            });
            return;
        }
        o(this, authType, true, 0, "firebaseUser is null", false, jVar, 20, null);
    }

    public final void d(Activity activity, AuthType authType, String str, String firebaseToken, AuthUser authUser, boolean z10, j jVar) {
        Intrinsics.checkNotNullParameter(authType, "authType");
        Intrinsics.checkNotNullParameter(firebaseToken, "firebaseToken");
        if (!this.f60701a) {
            return;
        }
        if (z10) {
            this.f60701a = false;
        }
        b bVar = this.f60702b;
        if (bVar != null) {
            bVar.a();
        }
        if (jVar != null) {
            jVar.c(activity, authType, str, firebaseToken, authUser);
        }
    }

    public void i(@NotNull Activity activity, @NotNull AuthCredential authCredential, @Nullable j jVar) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(authCredential, "authCredential");
        a();
    }

    public void j(@NotNull Activity activity, @NotNull String otp, @Nullable j jVar) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(otp, "otp");
        a();
    }

    public void k(@NotNull Activity activity, boolean z10, @Nullable j jVar) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        a();
    }

    public void p(@Nullable b bVar) {
        Log.i("FirebaseAuthManager", "BaseAuth init start");
        this.f60702b = bVar;
        try {
            this.f60703c = FirebaseAuth.getInstance();
        } catch (Exception unused) {
        }
        Log.i("FirebaseAuthManager", "BaseAuth init end");
    }

    public void q() {
        this.f60701a = false;
        b bVar = this.f60702b;
        if (bVar != null) {
            bVar.a();
        }
        this.f60703c = null;
        this.f60702b = null;
    }

    public void r(@NotNull Activity activity, @NotNull String areaCode, @NotNull String phoneNumber, @Nullable j jVar) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(areaCode, "areaCode");
        Intrinsics.checkNotNullParameter(phoneNumber, "phoneNumber");
        a();
    }
}
