package com.explorestack.protobuf.adcom;

import com.explorestack.protobuf.Descriptors;
import com.explorestack.protobuf.i0;
/* loaded from: classes3.dex */
public enum AuditStatusCode implements i0.c {
    AUDIT_STATUS_CODE_INVALID(0),
    AUDIT_STATUS_CODE_PENDING_AUDIT(1),
    AUDIT_STATUS_CODE_PRE_APPROVED(2),
    AUDIT_STATUS_CODE_APPROVED(3),
    AUDIT_STATUS_CODE_DENIED(4),
    AUDIT_STATUS_CODE_CHANGED(5),
    UNRECOGNIZED(-1);
    
    public static final int AUDIT_STATUS_CODE_APPROVED_VALUE = 3;
    public static final int AUDIT_STATUS_CODE_CHANGED_VALUE = 5;
    public static final int AUDIT_STATUS_CODE_DENIED_VALUE = 4;
    public static final int AUDIT_STATUS_CODE_INVALID_VALUE = 0;
    public static final int AUDIT_STATUS_CODE_PENDING_AUDIT_VALUE = 1;
    public static final int AUDIT_STATUS_CODE_PRE_APPROVED_VALUE = 2;
    private final int value;
    private static final i0.d<AuditStatusCode> internalValueMap = new i0.d<AuditStatusCode>() { // from class: com.explorestack.protobuf.adcom.AuditStatusCode.a
        @Override // com.explorestack.protobuf.i0.d
        /* renamed from: a */
        public AuditStatusCode findValueByNumber(int i10) {
            return AuditStatusCode.forNumber(i10);
        }
    };
    private static final AuditStatusCode[] VALUES = values();

    AuditStatusCode(int i10) {
        this.value = i10;
    }

    public static AuditStatusCode forNumber(int i10) {
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 != 3) {
                        if (i10 != 4) {
                            if (i10 != 5) {
                                return null;
                            }
                            return AUDIT_STATUS_CODE_CHANGED;
                        }
                        return AUDIT_STATUS_CODE_DENIED;
                    }
                    return AUDIT_STATUS_CODE_APPROVED;
                }
                return AUDIT_STATUS_CODE_PRE_APPROVED;
            }
            return AUDIT_STATUS_CODE_PENDING_AUDIT;
        }
        return AUDIT_STATUS_CODE_INVALID;
    }

    public static final Descriptors.EnumDescriptor getDescriptor() {
        return b.a().getEnumTypes().get(0);
    }

    public static i0.d<AuditStatusCode> internalGetValueMap() {
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
    public static AuditStatusCode valueOf(int i10) {
        return forNumber(i10);
    }

    public static AuditStatusCode valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
        if (enumValueDescriptor.getType() == getDescriptor()) {
            if (enumValueDescriptor.getIndex() == -1) {
                return UNRECOGNIZED;
            }
            return VALUES[enumValueDescriptor.getIndex()];
        }
        throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
    }
}
