package com.explorestack.protobuf.adcom;

import com.explorestack.protobuf.Descriptors;
import com.explorestack.protobuf.i0;
/* loaded from: classes3.dex */
public enum EventTrackingMethod implements i0.c {
    EVENT_TRACKING_METHOD_INVALID(0),
    EVENT_TRACKING_METHOD_IMAGE_PIXEL(1),
    EVENT_TRACKING_METHOD_JAVASCRIPT(2),
    UNRECOGNIZED(-1);
    
    public static final int EVENT_TRACKING_METHOD_IMAGE_PIXEL_VALUE = 1;
    public static final int EVENT_TRACKING_METHOD_INVALID_VALUE = 0;
    public static final int EVENT_TRACKING_METHOD_JAVASCRIPT_VALUE = 2;
    private final int value;
    private static final i0.d<EventTrackingMethod> internalValueMap = new i0.d<EventTrackingMethod>() { // from class: com.explorestack.protobuf.adcom.EventTrackingMethod.a
        @Override // com.explorestack.protobuf.i0.d
        /* renamed from: a */
        public EventTrackingMethod findValueByNumber(int i10) {
            return EventTrackingMethod.forNumber(i10);
        }
    };
    private static final EventTrackingMethod[] VALUES = values();

    EventTrackingMethod(int i10) {
        this.value = i10;
    }

    public static EventTrackingMethod forNumber(int i10) {
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 != 2) {
                    return null;
                }
                return EVENT_TRACKING_METHOD_JAVASCRIPT;
            }
            return EVENT_TRACKING_METHOD_IMAGE_PIXEL;
        }
        return EVENT_TRACKING_METHOD_INVALID;
    }

    public static final Descriptors.EnumDescriptor getDescriptor() {
        return b.a().getEnumTypes().get(14);
    }

    public static i0.d<EventTrackingMethod> internalGetValueMap() {
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
    public static EventTrackingMethod valueOf(int i10) {
        return forNumber(i10);
    }

    public static EventTrackingMethod valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
        if (enumValueDescriptor.getType() == getDescriptor()) {
            if (enumValueDescriptor.getIndex() == -1) {
                return UNRECOGNIZED;
            }
            return VALUES[enumValueDescriptor.getIndex()];
        }
        throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
    }
}
