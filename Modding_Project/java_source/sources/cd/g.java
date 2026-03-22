package cd;

import com.android.billingclient.api.BillingResult;
import com.shorttv.aar.billing.bean.ErrorCode;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: ResponseCodeExt.kt */
@Metadata
/* loaded from: classes6.dex */
public final class g {
    public static final boolean a(@NotNull BillingResult billingResult) {
        Intrinsics.checkNotNullParameter(billingResult, "<this>");
        if (billingResult.getResponseCode() == 0) {
            return true;
        }
        return false;
    }

    public static final boolean b(@NotNull BillingResult billingResult) {
        Intrinsics.checkNotNullParameter(billingResult, "<this>");
        if (billingResult.getResponseCode() != 3 && billingResult.getResponseCode() != 2) {
            return false;
        }
        return true;
    }

    @NotNull
    public static final ErrorCode c(int i10) {
        if (i10 != 12) {
            switch (i10) {
                case -3:
                    return ErrorCode.SERVICE_TIMEOUT;
                case -2:
                    return ErrorCode.FEATURE_NOT_SUPPORTED;
                case -1:
                    return ErrorCode.SERVICE_DISCONNECTED;
                case 0:
                    return ErrorCode.OK;
                case 1:
                    return ErrorCode.USER_CANCELED;
                case 2:
                    return ErrorCode.SERVICE_UNAVAILABLE;
                case 3:
                    return ErrorCode.BILLING_UNAVAILABLE;
                case 4:
                    return ErrorCode.ITEM_UNAVAILABLE;
                case 5:
                    return ErrorCode.DEVELOPER_ERROR;
                case 6:
                    return ErrorCode.ERROR;
                case 7:
                    return ErrorCode.ITEM_ALREADY_OWNED;
                case 8:
                    return ErrorCode.ITEM_NOT_OWNED;
                default:
                    return ErrorCode.UNKNOWN;
            }
        }
        return ErrorCode.NETWORK_ERROR;
    }
}
