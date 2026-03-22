package com.shorttv.aar.billing.bean;

import com.huawei.hms.framework.network.grs.GrsBaseInfo;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import ss.a;
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: ErrorCode.kt */
@Metadata
/* loaded from: classes6.dex */
public final class ErrorCode {
    private static final /* synthetic */ a $ENTRIES;
    private static final /* synthetic */ ErrorCode[] $VALUES;
    private final int value;
    public static final ErrorCode UNKNOWN = new ErrorCode(GrsBaseInfo.CountryCodeSource.UNKNOWN, 0, -1000);
    public static final ErrorCode SERVICE_TIMEOUT = new ErrorCode("SERVICE_TIMEOUT", 1, -3);
    public static final ErrorCode FEATURE_NOT_SUPPORTED = new ErrorCode("FEATURE_NOT_SUPPORTED", 2, -2);
    public static final ErrorCode SERVICE_DISCONNECTED = new ErrorCode("SERVICE_DISCONNECTED", 3, -1);
    public static final ErrorCode OK = new ErrorCode("OK", 4, 0);
    public static final ErrorCode USER_CANCELED = new ErrorCode("USER_CANCELED", 5, 1);
    public static final ErrorCode SERVICE_UNAVAILABLE = new ErrorCode("SERVICE_UNAVAILABLE", 6, 2);
    public static final ErrorCode BILLING_UNAVAILABLE = new ErrorCode("BILLING_UNAVAILABLE", 7, 3);
    public static final ErrorCode ITEM_UNAVAILABLE = new ErrorCode("ITEM_UNAVAILABLE", 8, 4);
    public static final ErrorCode DEVELOPER_ERROR = new ErrorCode("DEVELOPER_ERROR", 9, 5);
    public static final ErrorCode ERROR = new ErrorCode("ERROR", 10, 6);
    public static final ErrorCode ITEM_ALREADY_OWNED = new ErrorCode("ITEM_ALREADY_OWNED", 11, 7);
    public static final ErrorCode ITEM_NOT_OWNED = new ErrorCode("ITEM_NOT_OWNED", 12, 8);
    public static final ErrorCode NETWORK_ERROR = new ErrorCode("NETWORK_ERROR", 13, 12);

    private static final /* synthetic */ ErrorCode[] $values() {
        return new ErrorCode[]{UNKNOWN, SERVICE_TIMEOUT, FEATURE_NOT_SUPPORTED, SERVICE_DISCONNECTED, OK, USER_CANCELED, SERVICE_UNAVAILABLE, BILLING_UNAVAILABLE, ITEM_UNAVAILABLE, DEVELOPER_ERROR, ERROR, ITEM_ALREADY_OWNED, ITEM_NOT_OWNED, NETWORK_ERROR};
    }

    static {
        ErrorCode[] $values = $values();
        $VALUES = $values;
        $ENTRIES = kotlin.enums.a.a($values);
    }

    private ErrorCode(String str, int i10, int i11) {
        this.value = i11;
    }

    @NotNull
    public static a<ErrorCode> getEntries() {
        return $ENTRIES;
    }

    public static ErrorCode valueOf(String str) {
        return (ErrorCode) Enum.valueOf(ErrorCode.class, str);
    }

    public static ErrorCode[] values() {
        return (ErrorCode[]) $VALUES.clone();
    }

    public final int getValue() {
        return this.value;
    }
}
