package io.bidmachine.protobuf.sdk;

import com.explorestack.protobuf.Descriptors;
import com.explorestack.protobuf.i0;
/* loaded from: classes8.dex */
public enum ErrorReasonAnalytics implements i0.c {
    ERROR_REASON_ANALYTICS_INVALID(0),
    ERROR_REASON_ANALYTICS_UNDEFINED(2000),
    ERROR_REASON_ANALYTICS_MONITOR_UNDEFINED(2100),
    ERROR_REASON_ANALYTICS_MONITOR_NO_CONTENT(2101),
    ERROR_REASON_ANALYTICS_MONITOR_BAD_CONTENT(2102),
    ERROR_REASON_ANALYTICS_READER_UNDEFINED(ERROR_REASON_ANALYTICS_READER_UNDEFINED_VALUE),
    ERROR_REASON_ANALYTICS_READER_NO_CONTENT(ERROR_REASON_ANALYTICS_READER_NO_CONTENT_VALUE),
    ERROR_REASON_ANALYTICS_READER_BAD_CONTENT(ERROR_REASON_ANALYTICS_READER_BAD_CONTENT_VALUE),
    ERROR_REASON_ANALYTICS_READER_NO_ACCESS(ERROR_REASON_ANALYTICS_READER_NO_ACCESS_VALUE),
    UNRECOGNIZED(-1);
    
    public static final int ERROR_REASON_ANALYTICS_INVALID_VALUE = 0;
    public static final int ERROR_REASON_ANALYTICS_MONITOR_BAD_CONTENT_VALUE = 2102;
    public static final int ERROR_REASON_ANALYTICS_MONITOR_NO_CONTENT_VALUE = 2101;
    public static final int ERROR_REASON_ANALYTICS_MONITOR_UNDEFINED_VALUE = 2100;
    public static final int ERROR_REASON_ANALYTICS_READER_BAD_CONTENT_VALUE = 2202;
    public static final int ERROR_REASON_ANALYTICS_READER_NO_ACCESS_VALUE = 2203;
    public static final int ERROR_REASON_ANALYTICS_READER_NO_CONTENT_VALUE = 2201;
    public static final int ERROR_REASON_ANALYTICS_READER_UNDEFINED_VALUE = 2200;
    public static final int ERROR_REASON_ANALYTICS_UNDEFINED_VALUE = 2000;
    private final int value;
    private static final i0.d<ErrorReasonAnalytics> internalValueMap = new i0.d<ErrorReasonAnalytics>() { // from class: io.bidmachine.protobuf.sdk.ErrorReasonAnalytics.1
        @Override // com.explorestack.protobuf.i0.d
        public ErrorReasonAnalytics findValueByNumber(int i10) {
            return ErrorReasonAnalytics.forNumber(i10);
        }
    };
    private static final ErrorReasonAnalytics[] VALUES = values();

    ErrorReasonAnalytics(int i10) {
        this.value = i10;
    }

    public static ErrorReasonAnalytics forNumber(int i10) {
        if (i10 != 0) {
            if (i10 != 2000) {
                switch (i10) {
                    case 2100:
                        return ERROR_REASON_ANALYTICS_MONITOR_UNDEFINED;
                    case 2101:
                        return ERROR_REASON_ANALYTICS_MONITOR_NO_CONTENT;
                    case 2102:
                        return ERROR_REASON_ANALYTICS_MONITOR_BAD_CONTENT;
                    default:
                        switch (i10) {
                            case ERROR_REASON_ANALYTICS_READER_UNDEFINED_VALUE:
                                return ERROR_REASON_ANALYTICS_READER_UNDEFINED;
                            case ERROR_REASON_ANALYTICS_READER_NO_CONTENT_VALUE:
                                return ERROR_REASON_ANALYTICS_READER_NO_CONTENT;
                            case ERROR_REASON_ANALYTICS_READER_BAD_CONTENT_VALUE:
                                return ERROR_REASON_ANALYTICS_READER_BAD_CONTENT;
                            case ERROR_REASON_ANALYTICS_READER_NO_ACCESS_VALUE:
                                return ERROR_REASON_ANALYTICS_READER_NO_ACCESS;
                            default:
                                return null;
                        }
                }
            }
            return ERROR_REASON_ANALYTICS_UNDEFINED;
        }
        return ERROR_REASON_ANALYTICS_INVALID;
    }

    public static final Descriptors.EnumDescriptor getDescriptor() {
        return SDKErrorsProto.getDescriptor().getEnumTypes().get(0);
    }

    public static i0.d<ErrorReasonAnalytics> internalGetValueMap() {
        return internalValueMap;
    }

    public final Descriptors.EnumDescriptor getDescriptorForType() {
        return getDescriptor();
    }

    @Override // com.explorestack.protobuf.i0.c
    public final int getNumber() {
        if (this != UNRECOGNIZED) {
            return this.value;
        }
        throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
    }

    public final Descriptors.EnumValueDescriptor getValueDescriptor() {
        if (this != UNRECOGNIZED) {
            return getDescriptor().getValues().get(ordinal());
        }
        throw new IllegalStateException("Can't get the descriptor of an unrecognized enum value.");
    }

    @Deprecated
    public static ErrorReasonAnalytics valueOf(int i10) {
        return forNumber(i10);
    }

    public static ErrorReasonAnalytics valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
        if (enumValueDescriptor.getType() == getDescriptor()) {
            if (enumValueDescriptor.getIndex() == -1) {
                return UNRECOGNIZED;
            }
            return VALUES[enumValueDescriptor.getIndex()];
        }
        throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
    }
}
