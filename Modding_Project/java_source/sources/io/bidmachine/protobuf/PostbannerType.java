package io.bidmachine.protobuf;

import com.explorestack.protobuf.Descriptors;
import com.explorestack.protobuf.i0;
/* loaded from: classes8.dex */
public enum PostbannerType implements i0.c {
    DISABLED(0),
    MAIN(1),
    STORE(2),
    MIXED(3),
    UNRECOGNIZED(-1);
    
    public static final int DISABLED_VALUE = 0;
    public static final int MAIN_VALUE = 1;
    public static final int MIXED_VALUE = 3;
    public static final int STORE_VALUE = 2;
    private final int value;
    private static final i0.d<PostbannerType> internalValueMap = new i0.d<PostbannerType>() { // from class: io.bidmachine.protobuf.PostbannerType.1
        @Override // com.explorestack.protobuf.i0.d
        public PostbannerType findValueByNumber(int i10) {
            return PostbannerType.forNumber(i10);
        }
    };
    private static final PostbannerType[] VALUES = values();

    PostbannerType(int i10) {
        this.value = i10;
    }

    public static PostbannerType forNumber(int i10) {
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 != 3) {
                        return null;
                    }
                    return MIXED;
                }
                return STORE;
            }
            return MAIN;
        }
        return DISABLED;
    }

    public static final Descriptors.EnumDescriptor getDescriptor() {
        return ExtensionsProto.getDescriptor().getEnumTypes().get(0);
    }

    public static i0.d<PostbannerType> internalGetValueMap() {
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
    public static PostbannerType valueOf(int i10) {
        return forNumber(i10);
    }

    public static PostbannerType valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
        if (enumValueDescriptor.getType() == getDescriptor()) {
            if (enumValueDescriptor.getIndex() == -1) {
                return UNRECOGNIZED;
            }
            return VALUES[enumValueDescriptor.getIndex()];
        }
        throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
    }
}
