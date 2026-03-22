package io.bidmachine.protobuf;

import com.explorestack.protobuf.Descriptors;
import com.explorestack.protobuf.i0;
/* loaded from: classes8.dex */
public enum CreativeLoadingMethod implements i0.c {
    FullLoad(0),
    Stream(1),
    PartialLoad(2),
    UNRECOGNIZED(-1);
    
    public static final int FullLoad_VALUE = 0;
    public static final int PartialLoad_VALUE = 2;
    public static final int Stream_VALUE = 1;
    private final int value;
    private static final i0.d<CreativeLoadingMethod> internalValueMap = new i0.d<CreativeLoadingMethod>() { // from class: io.bidmachine.protobuf.CreativeLoadingMethod.1
        @Override // com.explorestack.protobuf.i0.d
        public CreativeLoadingMethod findValueByNumber(int i10) {
            return CreativeLoadingMethod.forNumber(i10);
        }
    };
    private static final CreativeLoadingMethod[] VALUES = values();

    CreativeLoadingMethod(int i10) {
        this.value = i10;
    }

    public static CreativeLoadingMethod forNumber(int i10) {
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 != 2) {
                    return null;
                }
                return PartialLoad;
            }
            return Stream;
        }
        return FullLoad;
    }

    public static final Descriptors.EnumDescriptor getDescriptor() {
        return ExtensionsProto.getDescriptor().getEnumTypes().get(6);
    }

    public static i0.d<CreativeLoadingMethod> internalGetValueMap() {
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
    public static CreativeLoadingMethod valueOf(int i10) {
        return forNumber(i10);
    }

    public static CreativeLoadingMethod valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
        if (enumValueDescriptor.getType() == getDescriptor()) {
            if (enumValueDescriptor.getIndex() == -1) {
                return UNRECOGNIZED;
            }
            return VALUES[enumValueDescriptor.getIndex()];
        }
        throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
    }
}
