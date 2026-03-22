package com.shorttv.aar.billing.bean;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import ss.a;
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: ErrorType.kt */
@Metadata
/* loaded from: classes6.dex */
public final class ErrorType {
    private static final /* synthetic */ a $ENTRIES;
    private static final /* synthetic */ ErrorType[] $VALUES;
    public static final ErrorType CREATE_FAILED = new ErrorType("CREATE_FAILED", 0);
    public static final ErrorType CONNECT_FAILED = new ErrorType("CONNECT_FAILED", 1);
    public static final ErrorType PURCHASE_FAILED = new ErrorType("PURCHASE_FAILED", 2);

    private static final /* synthetic */ ErrorType[] $values() {
        return new ErrorType[]{CREATE_FAILED, CONNECT_FAILED, PURCHASE_FAILED};
    }

    static {
        ErrorType[] $values = $values();
        $VALUES = $values;
        $ENTRIES = kotlin.enums.a.a($values);
    }

    private ErrorType(String str, int i10) {
    }

    @NotNull
    public static a<ErrorType> getEntries() {
        return $ENTRIES;
    }

    public static ErrorType valueOf(String str) {
        return (ErrorType) Enum.valueOf(ErrorType.class, str);
    }

    public static ErrorType[] values() {
        return (ErrorType[]) $VALUES.clone();
    }
}
