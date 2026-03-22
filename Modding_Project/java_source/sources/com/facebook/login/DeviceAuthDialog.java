package com.facebook.login;

import android.app.AlertDialog;
import android.app.Dialog;
import android.content.DialogInterface;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.Html;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import androidx.annotation.LayoutRes;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.FragmentActivity;
import com.bytedance.vodsetting.Module;
import com.facebook.AccessToken;
import com.facebook.AccessTokenSource;
import com.facebook.FacebookActivity;
import com.facebook.FacebookException;
import com.facebook.FacebookRequestError;
import com.facebook.GraphRequest;
import com.facebook.HttpMethod;
import com.facebook.appevents.h0;
import com.facebook.internal.FetchedAppSettingsManager;
import com.facebook.internal.SmartLoginOption;
import com.facebook.internal.u0;
import com.facebook.internal.v0;
import com.facebook.login.LoginClient;
import com.huawei.hms.support.api.entity.common.CommonConstant;
import com.mbridge.msdk.MBridgeConstans;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.EnumSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.collections.p0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.StringCompanionObject;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: DeviceAuthDialog.kt */
@Metadata
@SourceDebugExtension({"SMAP\nDeviceAuthDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DeviceAuthDialog.kt\ncom/facebook/login/DeviceAuthDialog\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,545:1\n1#2:546\n*E\n"})
/* loaded from: classes3.dex */
public class DeviceAuthDialog extends DialogFragment {
    @NotNull

    /* renamed from: l  reason: collision with root package name */
    public static final a f16405l = new a(null);
    @NotNull

    /* renamed from: m  reason: collision with root package name */
    private static final String f16406m = "device/login";
    @NotNull

    /* renamed from: n  reason: collision with root package name */
    private static final String f16407n = "device/login_status";

    /* renamed from: o  reason: collision with root package name */
    private static final int f16408o = 1349174;

    /* renamed from: a  reason: collision with root package name */
    private View f16409a;

    /* renamed from: b  reason: collision with root package name */
    private TextView f16410b;

    /* renamed from: c  reason: collision with root package name */
    private TextView f16411c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private DeviceAuthMethodHandler f16412d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private final AtomicBoolean f16413e = new AtomicBoolean();
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private volatile com.facebook.z f16414f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private volatile ScheduledFuture<?> f16415g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private volatile RequestState f16416h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f16417i;

    /* renamed from: j  reason: collision with root package name */
    private boolean f16418j;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    private LoginClient.Request f16419k;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DeviceAuthDialog.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class RequestState implements Parcelable {
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        private String f16421a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        private String f16422b;
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        private String f16423c;

        /* renamed from: d  reason: collision with root package name */
        private long f16424d;

        /* renamed from: e  reason: collision with root package name */
        private long f16425e;
        @NotNull

        /* renamed from: f  reason: collision with root package name */
        public static final b f16420f = new b(null);
        @NotNull
        public static final Parcelable.Creator<RequestState> CREATOR = new a();

        /* compiled from: DeviceAuthDialog.kt */
        @Metadata
        /* loaded from: classes3.dex */
        public static final class a implements Parcelable.Creator<RequestState> {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            @NotNull
            /* renamed from: a */
            public RequestState createFromParcel(@NotNull Parcel parcel) {
                Intrinsics.checkNotNullParameter(parcel, "parcel");
                return new RequestState(parcel);
            }

            @Override // android.os.Parcelable.Creator
            @NotNull
            /* renamed from: b */
            public RequestState[] newArray(int i10) {
                return new RequestState[i10];
            }
        }

        /* compiled from: DeviceAuthDialog.kt */
        @Metadata
        /* loaded from: classes3.dex */
        public static final class b {
            public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private b() {
            }
        }

        public RequestState() {
        }

        @Nullable
        public final String a() {
            return this.f16421a;
        }

        public final long b() {
            return this.f16424d;
        }

        @Nullable
        public final String c() {
            return this.f16423c;
        }

        @Nullable
        public final String d() {
            return this.f16422b;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public final void e(long j10) {
            this.f16424d = j10;
        }

        public final void f(long j10) {
            this.f16425e = j10;
        }

        public final void g(@Nullable String str) {
            this.f16423c = str;
        }

        public final void h(@Nullable String str) {
            this.f16422b = str;
            StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
            String format = String.format(Locale.ENGLISH, "https://facebook.com/device?user_code=%1$s&qr=1", Arrays.copyOf(new Object[]{str}, 1));
            Intrinsics.checkNotNullExpressionValue(format, "format(locale, format, *args)");
            this.f16421a = format;
        }

        public final boolean j() {
            if (this.f16425e == 0 || (new Date().getTime() - this.f16425e) - (this.f16424d * 1000) >= 0) {
                return false;
            }
            return true;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(@NotNull Parcel dest, int i10) {
            Intrinsics.checkNotNullParameter(dest, "dest");
            dest.writeString(this.f16421a);
            dest.writeString(this.f16422b);
            dest.writeString(this.f16423c);
            dest.writeLong(this.f16424d);
            dest.writeLong(this.f16425e);
        }

        protected RequestState(@NotNull Parcel parcel) {
            Intrinsics.checkNotNullParameter(parcel, "parcel");
            this.f16421a = parcel.readString();
            this.f16422b = parcel.readString();
            this.f16423c = parcel.readString();
            this.f16424d = parcel.readLong();
            this.f16425e = parcel.readLong();
        }
    }

    /* compiled from: DeviceAuthDialog.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final b b(JSONObject jSONObject) throws JSONException {
            String optString;
            JSONArray jSONArray = jSONObject.getJSONObject("permissions").getJSONArray("data");
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            ArrayList arrayList3 = new ArrayList();
            int length = jSONArray.length();
            for (int i10 = 0; i10 < length; i10++) {
                JSONObject optJSONObject = jSONArray.optJSONObject(i10);
                String permission = optJSONObject.optString("permission");
                Intrinsics.checkNotNullExpressionValue(permission, "permission");
                if (permission.length() != 0 && !Intrinsics.areEqual(permission, "installed") && (optString = optJSONObject.optString("status")) != null) {
                    int hashCode = optString.hashCode();
                    if (hashCode != -1309235419) {
                        if (hashCode != 280295099) {
                            if (hashCode == 568196142 && optString.equals("declined")) {
                                arrayList2.add(permission);
                            }
                        } else if (optString.equals("granted")) {
                            arrayList.add(permission);
                        }
                    } else if (optString.equals("expired")) {
                        arrayList3.add(permission);
                    }
                }
            }
            return new b(arrayList, arrayList2, arrayList3);
        }

        private a() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DeviceAuthDialog.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class b {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private List<String> f16426a;
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        private List<String> f16427b;
        @NotNull

        /* renamed from: c  reason: collision with root package name */
        private List<String> f16428c;

        public b(@NotNull List<String> grantedPermissions, @NotNull List<String> declinedPermissions, @NotNull List<String> expiredPermissions) {
            Intrinsics.checkNotNullParameter(grantedPermissions, "grantedPermissions");
            Intrinsics.checkNotNullParameter(declinedPermissions, "declinedPermissions");
            Intrinsics.checkNotNullParameter(expiredPermissions, "expiredPermissions");
            this.f16426a = grantedPermissions;
            this.f16427b = declinedPermissions;
            this.f16428c = expiredPermissions;
        }

        @NotNull
        public final List<String> a() {
            return this.f16427b;
        }

        @NotNull
        public final List<String> b() {
            return this.f16428c;
        }

        @NotNull
        public final List<String> c() {
            return this.f16426a;
        }
    }

    /* compiled from: DeviceAuthDialog.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class c extends Dialog {
        c(FragmentActivity fragmentActivity, int i10) {
            super(fragmentActivity, i10);
        }

        @Override // android.app.Dialog
        public void onBackPressed() {
            if (DeviceAuthDialog.this.t()) {
                super.onBackPressed();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void A(DeviceAuthDialog this$0, String userId, b permissions, String accessToken, Date date, Date date2, DialogInterface dialogInterface, int i10) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(userId, "$userId");
        Intrinsics.checkNotNullParameter(permissions, "$permissions");
        Intrinsics.checkNotNullParameter(accessToken, "$accessToken");
        this$0.n(userId, permissions, accessToken, date, date2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void B(DeviceAuthDialog this$0, DialogInterface dialogInterface, int i10) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        View r10 = this$0.r(false);
        Dialog dialog = this$0.getDialog();
        if (dialog != null) {
            dialog.setContentView(r10);
        }
        LoginClient.Request request = this$0.f16419k;
        if (request != null) {
            this$0.F(request);
        }
    }

    private final void C() {
        Long l10;
        RequestState requestState = this.f16416h;
        if (requestState != null) {
            l10 = Long.valueOf(requestState.b());
        } else {
            l10 = null;
        }
        if (l10 != null) {
            this.f16415g = DeviceAuthMethodHandler.f16430e.a().schedule(new Runnable() { // from class: com.facebook.login.c
                @Override // java.lang.Runnable
                public final void run() {
                    DeviceAuthDialog.D(DeviceAuthDialog.this);
                }
            }, l10.longValue(), TimeUnit.SECONDS);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void D(DeviceAuthDialog this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.y();
    }

    private final void E(RequestState requestState) {
        this.f16416h = requestState;
        TextView textView = this.f16410b;
        View view = null;
        if (textView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("confirmationCode");
            textView = null;
        }
        textView.setText(requestState.d());
        BitmapDrawable bitmapDrawable = new BitmapDrawable(getResources(), t2.a.c(requestState.a()));
        TextView textView2 = this.f16411c;
        if (textView2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("instructions");
            textView2 = null;
        }
        textView2.setCompoundDrawablesWithIntrinsicBounds((Drawable) null, bitmapDrawable, (Drawable) null, (Drawable) null);
        TextView textView3 = this.f16410b;
        if (textView3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("confirmationCode");
            textView3 = null;
        }
        textView3.setVisibility(0);
        View view2 = this.f16409a;
        if (view2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("progressBar");
        } else {
            view = view2;
        }
        view.setVisibility(8);
        if (!this.f16418j && t2.a.f(requestState.d())) {
            new h0(getContext()).f("fb_smart_login_service");
        }
        if (requestState.j()) {
            C();
        } else {
            y();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void G(DeviceAuthDialog this$0, com.facebook.b0 response) {
        FacebookException facebookException;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(response, "response");
        if (this$0.f16417i) {
            return;
        }
        if (response.b() != null) {
            FacebookRequestError b10 = response.b();
            if (b10 == null || (facebookException = b10.e()) == null) {
                facebookException = new FacebookException();
            }
            this$0.v(facebookException);
            return;
        }
        JSONObject c10 = response.c();
        if (c10 == null) {
            c10 = new JSONObject();
        }
        RequestState requestState = new RequestState();
        try {
            requestState.h(c10.getString("user_code"));
            requestState.g(c10.getString(Module.ResponseKey.Code));
            requestState.e(c10.getLong("interval"));
            this$0.E(requestState);
        } catch (JSONException e10) {
            this$0.v(new FacebookException(e10));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void l(DeviceAuthDialog this$0, com.facebook.b0 response) {
        FacebookException facebookException;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(response, "response");
        if (this$0.f16413e.get()) {
            return;
        }
        FacebookRequestError b10 = response.b();
        if (b10 != null) {
            int g10 = b10.g();
            if (g10 == f16408o || g10 == 1349172) {
                this$0.C();
                return;
            } else if (g10 == 1349152) {
                RequestState requestState = this$0.f16416h;
                if (requestState != null) {
                    t2.a.a(requestState.d());
                }
                LoginClient.Request request = this$0.f16419k;
                if (request != null) {
                    this$0.F(request);
                    return;
                } else {
                    this$0.u();
                    return;
                }
            } else if (g10 == 1349173) {
                this$0.u();
                return;
            } else {
                FacebookRequestError b11 = response.b();
                if (b11 == null || (facebookException = b11.e()) == null) {
                    facebookException = new FacebookException();
                }
                this$0.v(facebookException);
                return;
            }
        }
        try {
            JSONObject c10 = response.c();
            if (c10 == null) {
                c10 = new JSONObject();
            }
            String string = c10.getString("access_token");
            Intrinsics.checkNotNullExpressionValue(string, "resultObject.getString(\"access_token\")");
            this$0.w(string, c10.getLong("expires_in"), Long.valueOf(c10.optLong("data_access_expiration_time")));
        } catch (JSONException e10) {
            this$0.v(new FacebookException(e10));
        }
    }

    private final void n(String str, b bVar, String str2, Date date, Date date2) {
        DeviceAuthMethodHandler deviceAuthMethodHandler = this.f16412d;
        if (deviceAuthMethodHandler != null) {
            deviceAuthMethodHandler.B(str2, com.facebook.v.m(), str, bVar.c(), bVar.a(), bVar.b(), AccessTokenSource.DEVICE_AUTH, date, null, date2);
        }
        Dialog dialog = getDialog();
        if (dialog != null) {
            dialog.dismiss();
        }
    }

    private final GraphRequest q() {
        String str;
        Bundle bundle = new Bundle();
        RequestState requestState = this.f16416h;
        if (requestState != null) {
            str = requestState.c();
        } else {
            str = null;
        }
        bundle.putString(Module.ResponseKey.Code, str);
        bundle.putString("access_token", o());
        return GraphRequest.f14841n.B(null, f16407n, bundle, new GraphRequest.b() { // from class: com.facebook.login.d
            @Override // com.facebook.GraphRequest.b
            public final void a(com.facebook.b0 b0Var) {
                DeviceAuthDialog.l(DeviceAuthDialog.this, b0Var);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void s(DeviceAuthDialog this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.u();
    }

    private final void w(final String str, long j10, Long l10) {
        final Date date;
        Bundle bundle = new Bundle();
        bundle.putString("fields", "id,permissions,name");
        final Date date2 = null;
        if (j10 != 0) {
            date = new Date(new Date().getTime() + (j10 * 1000));
        } else {
            date = null;
        }
        if ((l10 == null || l10.longValue() != 0) && l10 != null) {
            date2 = new Date(l10.longValue() * 1000);
        }
        GraphRequest x10 = GraphRequest.f14841n.x(new AccessToken(str, com.facebook.v.m(), MBridgeConstans.ENDCARD_URL_TYPE_PL, null, null, null, null, date, null, date2, null, 1024, null), "me", new GraphRequest.b() { // from class: com.facebook.login.f
            @Override // com.facebook.GraphRequest.b
            public final void a(com.facebook.b0 b0Var) {
                DeviceAuthDialog.x(DeviceAuthDialog.this, str, date, date2, b0Var);
            }
        });
        x10.G(HttpMethod.GET);
        x10.H(bundle);
        x10.l();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void x(DeviceAuthDialog this$0, String accessToken, Date date, Date date2, com.facebook.b0 response) {
        Boolean bool;
        EnumSet<SmartLoginOption> w10;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(accessToken, "$accessToken");
        Intrinsics.checkNotNullParameter(response, "response");
        if (this$0.f16413e.get()) {
            return;
        }
        FacebookRequestError b10 = response.b();
        if (b10 != null) {
            FacebookException e10 = b10.e();
            if (e10 == null) {
                e10 = new FacebookException();
            }
            this$0.v(e10);
            return;
        }
        try {
            JSONObject c10 = response.c();
            if (c10 == null) {
                c10 = new JSONObject();
            }
            String string = c10.getString("id");
            Intrinsics.checkNotNullExpressionValue(string, "jsonObject.getString(\"id\")");
            b b11 = f16405l.b(c10);
            String string2 = c10.getString("name");
            Intrinsics.checkNotNullExpressionValue(string2, "jsonObject.getString(\"name\")");
            RequestState requestState = this$0.f16416h;
            if (requestState != null) {
                t2.a.a(requestState.d());
            }
            com.facebook.internal.p f10 = FetchedAppSettingsManager.f(com.facebook.v.m());
            if (f10 != null && (w10 = f10.w()) != null) {
                bool = Boolean.valueOf(w10.contains(SmartLoginOption.RequireConfirm));
            } else {
                bool = null;
            }
            if (Intrinsics.areEqual(bool, Boolean.TRUE) && !this$0.f16418j) {
                this$0.f16418j = true;
                this$0.z(string, b11, accessToken, string2, date, date2);
                return;
            }
            this$0.n(string, b11, accessToken, date, date2);
        } catch (JSONException e11) {
            this$0.v(new FacebookException(e11));
        }
    }

    private final void y() {
        RequestState requestState = this.f16416h;
        if (requestState != null) {
            requestState.f(new Date().getTime());
        }
        this.f16414f = q().l();
    }

    private final void z(final String str, final b bVar, final String str2, String str3, final Date date, final Date date2) {
        String string = getResources().getString(com.facebook.common.e.f15309g);
        Intrinsics.checkNotNullExpressionValue(string, "resources.getString(R.st…login_confirmation_title)");
        String string2 = getResources().getString(com.facebook.common.e.f15308f);
        Intrinsics.checkNotNullExpressionValue(string2, "resources.getString(R.st…confirmation_continue_as)");
        String string3 = getResources().getString(com.facebook.common.e.f15307e);
        Intrinsics.checkNotNullExpressionValue(string3, "resources.getString(R.st…ogin_confirmation_cancel)");
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        String format = String.format(string2, Arrays.copyOf(new Object[]{str3}, 1));
        Intrinsics.checkNotNullExpressionValue(format, "format(format, *args)");
        AlertDialog.Builder builder = new AlertDialog.Builder(getContext());
        builder.setMessage(string).setCancelable(true).setNegativeButton(format, new DialogInterface.OnClickListener() { // from class: com.facebook.login.g
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i10) {
                DeviceAuthDialog.A(DeviceAuthDialog.this, str, bVar, str2, date, date2, dialogInterface, i10);
            }
        }).setPositiveButton(string3, new DialogInterface.OnClickListener() { // from class: com.facebook.login.h
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i10) {
                DeviceAuthDialog.B(DeviceAuthDialog.this, dialogInterface, i10);
            }
        });
        builder.create().show();
    }

    public void F(@NotNull LoginClient.Request request) {
        Map map;
        Intrinsics.checkNotNullParameter(request, "request");
        this.f16419k = request;
        Bundle bundle = new Bundle();
        bundle.putString(CommonConstant.ReqAccessTokenParam.SCOPE_LABEL, TextUtils.join(",", request.o()));
        u0.r0(bundle, CommonConstant.ReqAccessTokenParam.REDIRECT_URI, request.j());
        u0.r0(bundle, "target_user_id", request.h());
        bundle.putString("access_token", o());
        Map<String, String> m10 = m();
        if (m10 != null) {
            map = p0.A(m10);
        } else {
            map = null;
        }
        bundle.putString("device_info", t2.a.d(map));
        GraphRequest.f14841n.B(null, f16406m, bundle, new GraphRequest.b() { // from class: com.facebook.login.e
            @Override // com.facebook.GraphRequest.b
            public final void a(com.facebook.b0 b0Var) {
                DeviceAuthDialog.G(DeviceAuthDialog.this, b0Var);
            }
        }).l();
    }

    @Nullable
    public Map<String, String> m() {
        return null;
    }

    @NotNull
    public String o() {
        return v0.b() + '|' + v0.c();
    }

    @Override // androidx.fragment.app.DialogFragment
    @NotNull
    public Dialog onCreateDialog(@Nullable Bundle bundle) {
        boolean z10;
        c cVar = new c(requireActivity(), com.facebook.common.f.f15311b);
        if (t2.a.e() && !this.f16418j) {
            z10 = true;
        } else {
            z10 = false;
        }
        cVar.setContentView(r(z10));
        return cVar;
    }

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        LoginMethodHandler loginMethodHandler;
        RequestState requestState;
        LoginClient l10;
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        View onCreateView = super.onCreateView(inflater, viewGroup, bundle);
        FragmentActivity requireActivity = requireActivity();
        Intrinsics.checkNotNull(requireActivity, "null cannot be cast to non-null type com.facebook.FacebookActivity");
        LoginFragment loginFragment = (LoginFragment) ((FacebookActivity) requireActivity).j();
        if (loginFragment != null && (l10 = loginFragment.l()) != null) {
            loginMethodHandler = l10.k();
        } else {
            loginMethodHandler = null;
        }
        this.f16412d = (DeviceAuthMethodHandler) loginMethodHandler;
        if (bundle != null && (requestState = (RequestState) bundle.getParcelable("request_state")) != null) {
            E(requestState);
        }
        return onCreateView;
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        this.f16417i = true;
        this.f16413e.set(true);
        super.onDestroyView();
        com.facebook.z zVar = this.f16414f;
        if (zVar != null) {
            zVar.cancel(true);
        }
        ScheduledFuture<?> scheduledFuture = this.f16415g;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(true);
        }
    }

    @Override // androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnDismissListener
    public void onDismiss(@NotNull DialogInterface dialog) {
        Intrinsics.checkNotNullParameter(dialog, "dialog");
        super.onDismiss(dialog);
        if (!this.f16417i) {
            u();
        }
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onSaveInstanceState(@NotNull Bundle outState) {
        Intrinsics.checkNotNullParameter(outState, "outState");
        super.onSaveInstanceState(outState);
        if (this.f16416h != null) {
            outState.putParcelable("request_state", this.f16416h);
        }
    }

    @LayoutRes
    protected int p(boolean z10) {
        if (z10) {
            return com.facebook.common.d.f15302d;
        }
        return com.facebook.common.d.f15300b;
    }

    @NotNull
    protected View r(boolean z10) {
        LayoutInflater layoutInflater = requireActivity().getLayoutInflater();
        Intrinsics.checkNotNullExpressionValue(layoutInflater, "requireActivity().layoutInflater");
        TextView textView = null;
        View inflate = layoutInflater.inflate(p(z10), (ViewGroup) null);
        Intrinsics.checkNotNullExpressionValue(inflate, "inflater.inflate(getLayo…esId(isSmartLogin), null)");
        View findViewById = inflate.findViewById(com.facebook.common.c.f15293f);
        Intrinsics.checkNotNullExpressionValue(findViewById, "view.findViewById(R.id.progress_bar)");
        this.f16409a = findViewById;
        View findViewById2 = inflate.findViewById(com.facebook.common.c.f15292e);
        Intrinsics.checkNotNull(findViewById2, "null cannot be cast to non-null type android.widget.TextView");
        this.f16410b = (TextView) findViewById2;
        View findViewById3 = inflate.findViewById(com.facebook.common.c.f15288a);
        Intrinsics.checkNotNull(findViewById3, "null cannot be cast to non-null type android.widget.Button");
        ((Button) findViewById3).setOnClickListener(new View.OnClickListener() { // from class: com.facebook.login.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DeviceAuthDialog.s(DeviceAuthDialog.this, view);
            }
        });
        View findViewById4 = inflate.findViewById(com.facebook.common.c.f15289b);
        Intrinsics.checkNotNull(findViewById4, "null cannot be cast to non-null type android.widget.TextView");
        TextView textView2 = (TextView) findViewById4;
        this.f16411c = textView2;
        if (textView2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("instructions");
        } else {
            textView = textView2;
        }
        textView.setText(Html.fromHtml(getString(com.facebook.common.e.f15303a)));
        return inflate;
    }

    protected boolean t() {
        return true;
    }

    protected void u() {
        if (!this.f16413e.compareAndSet(false, true)) {
            return;
        }
        RequestState requestState = this.f16416h;
        if (requestState != null) {
            t2.a.a(requestState.d());
        }
        DeviceAuthMethodHandler deviceAuthMethodHandler = this.f16412d;
        if (deviceAuthMethodHandler != null) {
            deviceAuthMethodHandler.z();
        }
        Dialog dialog = getDialog();
        if (dialog != null) {
            dialog.dismiss();
        }
    }

    protected void v(@NotNull FacebookException ex) {
        Intrinsics.checkNotNullParameter(ex, "ex");
        if (!this.f16413e.compareAndSet(false, true)) {
            return;
        }
        RequestState requestState = this.f16416h;
        if (requestState != null) {
            t2.a.a(requestState.d());
        }
        DeviceAuthMethodHandler deviceAuthMethodHandler = this.f16412d;
        if (deviceAuthMethodHandler != null) {
            deviceAuthMethodHandler.A(ex);
        }
        Dialog dialog = getDialog();
        if (dialog != null) {
            dialog.dismiss();
        }
    }
}
