package com.startshorts.androidplayer.manager.api.base;

import com.startshorts.androidplayer.R$string;
import com.startshorts.androidplayer.bean.api.ApiErrorExtra;
import com.startshorts.androidplayer.bean.exception.ResponseException;
import com.startshorts.androidplayer.bean.exception.ServerException;
import com.startshorts.androidplayer.manager.account.AccountManager;
import fk.u;
import java.io.IOException;
import java.net.SocketException;
import java.net.SocketTimeoutException;
import java.net.UnknownHostException;
import javax.net.ssl.SSLException;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import retrofit2.HttpException;
/* compiled from: ExceptionHandler.kt */
@Metadata
/* loaded from: classes6.dex */
public final class r {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final r f41814a = new r();

    private r() {
    }

    @NotNull
    public final ResponseException a(@Nullable Throwable th2) {
        String str;
        if (th2 instanceof HttpException) {
            HttpException httpException = (HttpException) th2;
            if (httpException.b() != 500 && httpException.b() != 404 && httpException.b() != 400) {
                String d10 = u.f51776a.d(R$string.common_network_error);
                ApiErrorExtra apiErrorExtra = new ApiErrorExtra();
                apiErrorExtra.setRealCode(httpException.b());
                apiErrorExtra.setRealMessage(httpException.getMessage());
                Unit unit = Unit.f60915a;
                return new ResponseException(90001, d10, apiErrorExtra, true);
            }
            String d11 = u.f51776a.d(R$string.common_server_error);
            ApiErrorExtra apiErrorExtra2 = new ApiErrorExtra();
            apiErrorExtra2.setRealCode(httpException.b());
            apiErrorExtra2.setRealMessage(httpException.getMessage());
            Unit unit2 = Unit.f60915a;
            return new ResponseException(90002, d11, apiErrorExtra2, true);
        } else if (th2 instanceof ServerException) {
            ServerException serverException = (ServerException) th2;
            int code = serverException.getCode();
            if (code != 20000 && code != 20002) {
                if (code != 20003) {
                    int code2 = serverException.getCode();
                    String message = serverException.getMessage();
                    ApiErrorExtra apiErrorExtra3 = new ApiErrorExtra();
                    apiErrorExtra3.setRealCode(serverException.getCode());
                    apiErrorExtra3.setRealMessage(serverException.getMessage());
                    Unit unit3 = Unit.f60915a;
                    return new ResponseException(code2, message, apiErrorExtra3, true);
                }
                AccountManager.f41533a.k();
                int code3 = serverException.getCode();
                String d12 = u.f51776a.d(R$string.common_login_expired);
                ApiErrorExtra apiErrorExtra4 = new ApiErrorExtra();
                apiErrorExtra4.setRealCode(serverException.getCode());
                apiErrorExtra4.setRealMessage(serverException.getMessage());
                Unit unit4 = Unit.f60915a;
                return new ResponseException(code3, d12, apiErrorExtra4, false);
            }
            AccountManager.f41533a.j();
            int code4 = serverException.getCode();
            String message2 = serverException.getMessage();
            ApiErrorExtra apiErrorExtra5 = new ApiErrorExtra();
            apiErrorExtra5.setRealCode(serverException.getCode());
            apiErrorExtra5.setRealMessage(serverException.getMessage());
            Unit unit5 = Unit.f60915a;
            return new ResponseException(code4, message2, apiErrorExtra5, false);
        } else if (!(th2 instanceof SocketException) && !(th2 instanceof SocketTimeoutException) && !(th2 instanceof UnknownHostException)) {
            if (th2 instanceof SSLException) {
                String d13 = u.f51776a.d(R$string.common_network_error);
                ApiErrorExtra apiErrorExtra6 = new ApiErrorExtra();
                apiErrorExtra6.setRealCode(1);
                apiErrorExtra6.setRealMessage(((SSLException) th2).getMessage());
                Unit unit6 = Unit.f60915a;
                return new ResponseException(90002, d13, apiErrorExtra6, true);
            }
            String str2 = null;
            if (th2 != null) {
                str = th2.getMessage();
            } else {
                str = null;
            }
            if (Intrinsics.areEqual(str, "Canceled")) {
                return new ResponseException(90003, "Request Cancelled");
            }
            String d14 = u.f51776a.d(R$string.common_unknown_exception);
            ApiErrorExtra apiErrorExtra7 = new ApiErrorExtra();
            apiErrorExtra7.setRealCode(-1);
            if (th2 != null) {
                str2 = th2.getMessage();
            }
            apiErrorExtra7.setRealMessage(str2);
            Unit unit7 = Unit.f60915a;
            return new ResponseException(90000, d14, apiErrorExtra7, true);
        } else {
            String d15 = u.f51776a.d(R$string.common_network_error);
            ApiErrorExtra apiErrorExtra8 = new ApiErrorExtra();
            apiErrorExtra8.setRealCode(2);
            apiErrorExtra8.setRealMessage(((IOException) th2).getMessage());
            Unit unit8 = Unit.f60915a;
            return new ResponseException(90001, d15, apiErrorExtra8, true);
        }
    }
}
