package com.explorestack.protobuf.adcom;

import com.explorestack.protobuf.Descriptors;
import com.explorestack.protobuf.i0;
/* loaded from: classes3.dex */
public enum DisplayPlacementType implements i0.c {
    DISPLAY_PLACEMENT_TYPE_INVALID(0),
    DISPLAY_PLACEMENT_TYPE_IN_FEED_DISPLAY(1),
    DISPLAY_PLACEMENT_TYPE_IN_ATOMIC_UNIT(2),
    DISPLAY_PLACEMENT_TYPE_OUTSIDE_CORE_CONTENT(3),
    DISPLAY_PLACEMENT_TYPE_RECOMMENDATION_WIDGET(4),
    UNRECOGNIZED(-1);
    
    public static final int DISPLAY_PLACEMENT_TYPE_INVALID_VALUE = 0;
    public static final int DISPLAY_PLACEMENT_TYPE_IN_ATOMIC_UNIT_VALUE = 2;
    public static final int DISPLAY_PLACEMENT_TYPE_IN_FEED_DISPLAY_VALUE = 1;
    public static final int DISPLAY_PLACEMENT_TYPE_OUTSIDE_CORE_CONTENT_VALUE = 3;
    public static final int DISPLAY_PLACEMENT_TYPE_RECOMMENDATION_WIDGET_VALUE = 4;
    private final int value;
    private static final i0.d<DisplayPlacementType> internalValueMap = new i0.d<DisplayPlacementType>() { // from class: com.explorestack.protobuf.adcom.DisplayPlacementType.a
        @Override // com.explorestack.protobuf.i0.d
        /* renamed from: a */
        public DisplayPlacementType findValueByNumber(int i10) {
            return DisplayPlacementType.forNumber(i10);
        }
    };
    private static final DisplayPlacementType[] VALUES = values();

    DisplayPlacementType(int i10) {
        this.value = i10;
    }

    public static DisplayPlacementType forNumber(int i10) {
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 != 3) {
                        if (i10 != 4) {
                            return null;
                        }
                        return DISPLAY_PLACEMENT_TYPE_RECOMMENDATION_WIDGET;
                    }
                    return DISPLAY_PLACEMENT_TYPE_OUTSIDE_CORE_CONTENT;
                }
                return DISPLAY_PLACEMENT_TYPE_IN_ATOMIC_UNIT;
            }
            return DISPLAY_PLACEMENT_TYPE_IN_FEED_DISPLAY;
        }
        return DISPLAY_PLACEMENT_TYPE_INVALID;
    }

    public static final Descriptors.EnumDescriptor getDescriptor() {
        return b.a().getEnumTypes().get(12);
    }

    public static i0.d<DisplayPlacementType> internalGetValueMap() {
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
    public static DisplayPlacementType valueOf(int i10) {
        return forNumber(i10);
    }

    public static DisplayPlacementType valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
        if (enumValueDescriptor.getType() == getDescriptor()) {
            if (enumValueDescriptor.getIndex() == -1) {
                return UNRECOGNIZED;
            }
            return VALUES[enumValueDescriptor.getIndex()];
        }
        throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
    }
}
