package ib;

import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.text.TextUtils;
import android.util.Base64;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.huawei.hms.common.ApiException;
import com.huawei.hms.common.ResolvableApiException;
import com.huawei.hms.common.internal.ResponseErrorCode;
import com.huawei.hms.common.internal.TaskApiCall;
import com.huawei.hms.support.account.result.AccountIcon;
import com.huawei.hms.support.account.result.GetChannelResult;
import com.huawei.hms.support.api.client.Status;
import com.huawei.hms.support.api.entity.core.CommonCode;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import org.json.JSONException;
/* compiled from: AccountGetChannelTaskApiCall.java */
/* loaded from: classes5.dex */
public class b0 extends TaskApiCall<v, AccountIcon> {

    /* renamed from: f  reason: collision with root package name */
    private Context f53367f;

    public b0(String str, String str2, String str3, Context context) {
        super(str, str2, str3);
        this.f53367f = context;
    }

    private Bitmap b(String str) {
        try {
            byte[] decode = Base64.decode(str, 0);
            return BitmapFactory.decodeByteArray(decode, 0, decode.length);
        } catch (Exception e10) {
            t.d("[AccountSDK]AccountGetChannelTaskApiCall", "stringToBitmap Exception is " + e10.getClass().getSimpleName(), true);
            return null;
        } catch (OutOfMemoryError unused) {
            t.d("[AccountSDK]AccountGetChannelTaskApiCall", "out of memory error ", true);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.huawei.hms.common.internal.TaskApiCall
    /* renamed from: c */
    public void a(v vVar, ResponseErrorCode responseErrorCode, String str, ua.g<AccountIcon> gVar) {
        if (responseErrorCode == null) {
            t.b("[AccountSDK]AccountGetChannelTaskApiCall", "response is null.", true);
            gVar.b(new ApiException(new Status(2003, "response is null.")));
            return;
        }
        int errorCode = responseErrorCode.getErrorCode();
        if (errorCode != 0 && CommonCode.Resolution.HAS_RESOLUTION.equals(responseErrorCode.getResolution())) {
            t.b("[AccountSDK]AccountGetChannelTaskApiCall", "apk version is low or is not exist.", true);
            Status status = new Status(errorCode, responseErrorCode.getErrorReason());
            p.c(responseErrorCode, status);
            gVar.b(new ResolvableApiException(status));
            return;
        }
        t.b("[AccountSDK]AccountGetChannelTaskApiCall", "ResponseErrorCode.status:" + responseErrorCode.getErrorCode(), true);
        AccountIcon accountIcon = new AccountIcon();
        if (!TextUtils.isEmpty(str)) {
            if (JsonUtils.EMPTY_JSON.equals(str)) {
                t.b("[AccountSDK]AccountGetChannelTaskApiCall", "getChannel complete, body is null", true);
                gVar.b(new ApiException(new Status(responseErrorCode.getErrorCode(), responseErrorCode.getErrorReason())));
                return;
            }
            try {
                GetChannelResult fromJson = new GetChannelResult().fromJson(str);
                if (fromJson.isSuccess()) {
                    t.b("[AccountSDK]AccountGetChannelTaskApiCall", "getChannel success", true);
                    accountIcon.setDescription(fromJson.getDescription());
                    accountIcon.setIcon(b(fromJson.getIcon()));
                    gVar.c(accountIcon);
                    long a10 = p.a();
                    SharedPreferences.Editor edit = this.f53367f.getSharedPreferences("ACCOUNT_CHANNEL_CACHE", 0).edit();
                    edit.putLong("cache_time", a10);
                    edit.putString(CampaignEx.JSON_KEY_DESC, fromJson.getDescription());
                    edit.putString("icon", fromJson.getIcon());
                    edit.apply();
                } else {
                    t.b("[AccountSDK]AccountGetChannelTaskApiCall", "getChannel failed", true);
                    gVar.b(new ApiException(fromJson.getStatus()));
                }
                return;
            } catch (JSONException unused) {
                t.c("[AccountSDK]AccountGetChannelTaskApiCall", "getChannel complete, but parser json exception", true);
                gVar.b(new ApiException(new Status(errorCode, responseErrorCode.getErrorReason())));
                return;
            }
        }
        t.b("[AccountSDK]AccountGetChannelTaskApiCall", "getChannel complete, response is null, failed", true);
        gVar.b(new ApiException(new Status(errorCode, responseErrorCode.getErrorReason())));
    }

    @Override // com.huawei.hms.common.internal.TaskApiCall
    public int getApiLevel() {
        return 10;
    }
}
