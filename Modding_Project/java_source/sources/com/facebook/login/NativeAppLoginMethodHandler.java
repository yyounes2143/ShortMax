package com.facebook.login;

import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.os.Bundle;
import android.os.Parcel;
import androidx.activity.result.ActivityResultLauncher;
import androidx.annotation.VisibleForTesting;
import androidx.fragment.app.Fragment;
import com.bytedance.vodsetting.Module;
import com.facebook.AccessTokenSource;
import com.facebook.FacebookException;
import com.facebook.FacebookRequestError;
import com.facebook.FacebookServiceException;
import com.facebook.internal.o0;
import com.facebook.internal.u0;
import com.facebook.login.LoginClient;
import com.facebook.login.LoginMethodHandler;
import com.ss.ttvideoengine.selector.strategy.GearStrategy;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: NativeAppLoginMethodHandler.kt */
@Metadata
@VisibleForTesting(otherwise = 3)
/* loaded from: classes3.dex */
public abstract class NativeAppLoginMethodHandler extends LoginMethodHandler {
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private final AccessTokenSource f16522d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NativeAppLoginMethodHandler(@NotNull LoginClient loginClient) {
        super(loginClient);
        Intrinsics.checkNotNullParameter(loginClient, "loginClient");
        this.f16522d = AccessTokenSource.FACEBOOK_APPLICATION_WEB;
    }

    private final boolean E(Intent intent) {
        List<ResolveInfo> queryIntentActivities = com.facebook.v.l().getPackageManager().queryIntentActivities(intent, 65536);
        Intrinsics.checkNotNullExpressionValue(queryIntentActivities, "getApplicationContext()\n…nager.MATCH_DEFAULT_ONLY)");
        return !queryIntentActivities.isEmpty();
    }

    private final void G(final LoginClient.Request request, final Bundle bundle) {
        if (bundle.containsKey(Module.ResponseKey.Code) && !u0.d0(bundle.getString(Module.ResponseKey.Code))) {
            com.facebook.v.u().execute(new Runnable() { // from class: com.facebook.login.s
                @Override // java.lang.Runnable
                public final void run() {
                    NativeAppLoginMethodHandler.H(NativeAppLoginMethodHandler.this, request, bundle);
                }
            });
        } else {
            D(request, bundle);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void H(NativeAppLoginMethodHandler this$0, LoginClient.Request request, Bundle extras) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(request, "$request");
        Intrinsics.checkNotNullParameter(extras, "$extras");
        try {
            this$0.D(request, this$0.l(request, extras));
        } catch (FacebookServiceException e10) {
            FacebookRequestError e11 = e10.e();
            this$0.C(request, e11.d(), e11.c(), String.valueOf(e11.b()));
        } catch (FacebookException e12) {
            this$0.C(request, null, e12.getMessage(), null);
        }
    }

    private final void x(LoginClient.Result result) {
        if (result != null) {
            d().g(result);
        } else {
            d().I();
        }
    }

    @NotNull
    public AccessTokenSource A() {
        return this.f16522d;
    }

    protected void B(@Nullable LoginClient.Request request, @NotNull Intent data) {
        String str;
        Object obj;
        Intrinsics.checkNotNullParameter(data, "data");
        Bundle extras = data.getExtras();
        String y10 = y(extras);
        if (extras != null && (obj = extras.get(GearStrategy.GEAR_STRATEGY_KEY_ERROR_CODE)) != null) {
            str = obj.toString();
        } else {
            str = null;
        }
        if (Intrinsics.areEqual(o0.c(), str)) {
            x(LoginClient.Result.f16480i.c(request, y10, z(extras), str));
        } else {
            x(LoginClient.Result.f16480i.a(request, y10));
        }
    }

    protected void C(@Nullable LoginClient.Request request, @Nullable String str, @Nullable String str2, @Nullable String str3) {
        if (str != null && Intrinsics.areEqual(str, "logged_out")) {
            CustomTabLoginMethodHandler.f16395l = true;
            x(null);
        } else if (CollectionsKt.g0(o0.d(), str)) {
            x(null);
        } else if (CollectionsKt.g0(o0.e(), str)) {
            x(LoginClient.Result.f16480i.a(request, null));
        } else {
            x(LoginClient.Result.f16480i.c(request, str, str2, str3));
        }
    }

    protected void D(@NotNull LoginClient.Request request, @NotNull Bundle extras) {
        Intrinsics.checkNotNullParameter(request, "request");
        Intrinsics.checkNotNullParameter(extras, "extras");
        try {
            LoginMethodHandler.a aVar = LoginMethodHandler.f16519c;
            x(LoginClient.Result.f16480i.b(request, aVar.b(request.o(), extras, A(), request.a()), aVar.d(extras, request.n())));
        } catch (FacebookException e10) {
            x(LoginClient.Result.b.d(LoginClient.Result.f16480i, request, null, e10.getMessage(), null, 8, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean I(@Nullable Intent intent, int i10) {
        LoginFragment loginFragment;
        ActivityResultLauncher<Intent> j10;
        if (intent == null || !E(intent)) {
            return false;
        }
        Fragment l10 = d().l();
        Unit unit = null;
        if (l10 instanceof LoginFragment) {
            loginFragment = (LoginFragment) l10;
        } else {
            loginFragment = null;
        }
        if (loginFragment != null && (j10 = loginFragment.j()) != null) {
            j10.launch(intent);
            unit = Unit.f60915a;
        }
        if (unit == null) {
            return false;
        }
        return true;
    }

    @Override // com.facebook.login.LoginMethodHandler
    public boolean k(int i10, int i11, @Nullable Intent intent) {
        String str;
        LoginClient.Request p10 = d().p();
        if (intent == null) {
            x(LoginClient.Result.f16480i.a(p10, "Operation canceled"));
        } else if (i11 == 0) {
            B(p10, intent);
        } else if (i11 != -1) {
            x(LoginClient.Result.b.d(LoginClient.Result.f16480i, p10, "Unexpected resultCode from authorization.", null, null, 8, null));
        } else {
            Bundle extras = intent.getExtras();
            if (extras == null) {
                x(LoginClient.Result.b.d(LoginClient.Result.f16480i, p10, "Unexpected null from returned authorization data.", null, null, 8, null));
                return true;
            }
            String y10 = y(extras);
            Object obj = extras.get(GearStrategy.GEAR_STRATEGY_KEY_ERROR_CODE);
            if (obj != null) {
                str = obj.toString();
            } else {
                str = null;
            }
            String z10 = z(extras);
            String string = extras.getString("e2e");
            if (!u0.d0(string)) {
                h(string);
            }
            if (y10 == null && str == null && z10 == null && p10 != null) {
                G(p10, extras);
            } else {
                C(p10, y10, z10, str);
            }
        }
        return true;
    }

    @Nullable
    protected String y(@Nullable Bundle bundle) {
        String string;
        if (bundle == null || (string = bundle.getString("error")) == null) {
            if (bundle != null) {
                return bundle.getString("error_type");
            }
            return null;
        }
        return string;
    }

    @Nullable
    protected String z(@Nullable Bundle bundle) {
        String string;
        if (bundle == null || (string = bundle.getString("error_message")) == null) {
            if (bundle != null) {
                return bundle.getString("error_description");
            }
            return null;
        }
        return string;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NativeAppLoginMethodHandler(@NotNull Parcel source) {
        super(source);
        Intrinsics.checkNotNullParameter(source, "source");
        this.f16522d = AccessTokenSource.FACEBOOK_APPLICATION_WEB;
    }
}
