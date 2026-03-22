package com.explorestack.protobuf;

import com.explorestack.protobuf.Descriptors;
import com.explorestack.protobuf.i0;
/* loaded from: classes3.dex */
public enum Syntax implements i0.c {
    SYNTAX_PROTO2(0),
    SYNTAX_PROTO3(1),
    UNRECOGNIZED(-1);
    
    public static final int SYNTAX_PROTO2_VALUE = 0;
    public static final int SYNTAX_PROTO3_VALUE = 1;
    private final int value;
    private static final i0.d<Syntax> internalValueMap = new i0.d<Syntax>() { // from class: com.explorestack.protobuf.Syntax.a
        @Override // com.explorestack.protobuf.i0.d
        /* renamed from: a */
        public Syntax findValueByNumber(int i10) {
            return Syntax.forNumber(i10);
        }
    };
    private static final Syntax[] VALUES = values();

    Syntax(int i10) {
        this.value = i10;
    }

    public static Syntax forNumber(int i10) {
        if (i10 != 0) {
            if (i10 != 1) {
                return null;
            }
            return SYNTAX_PROTO3;
        }
        return SYNTAX_PROTO2;
    }

    public static final Descriptors.EnumDescriptor getDescriptor() {
        return e2.a().getEnumTypes().get(0);
    }

    public static i0.d<Syntax> internalGetValueMap() {
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
    public static Syntax valueOf(int i10) {
        return forNumber(i10);
    }

    public static Syntax valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
        if (enumValueDescriptor.getType() == getDescriptor()) {
            if (enumValueDescriptor.getIndex() == -1) {
                return UNRECOGNIZED;
            }
            return VALUES[enumValueDescriptor.getIndex()];
        }
        throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
    }
}
