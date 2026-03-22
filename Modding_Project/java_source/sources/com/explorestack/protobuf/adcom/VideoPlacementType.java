package com.explorestack.protobuf.adcom;

import com.explorestack.protobuf.Descriptors;
import com.explorestack.protobuf.i0;
/* loaded from: classes3.dex */
public enum VideoPlacementType implements i0.c {
    VIDEO_PLACEMENT_TYPE_INVALID(0),
    VIDEO_PLACEMENT_TYPE_IN_STREAM(1),
    VIDEO_PLACEMENT_TYPE_IN_BANNER(2),
    VIDEO_PLACEMENT_TYPE_IN_ARTICLE(3),
    VIDEO_PLACEMENT_TYPE_IN_FEED(4),
    VIDEO_PLACEMENT_TYPE_INTERSTITIAL(5),
    UNRECOGNIZED(-1);
    
    public static final int VIDEO_PLACEMENT_TYPE_INTERSTITIAL_VALUE = 5;
    public static final int VIDEO_PLACEMENT_TYPE_INVALID_VALUE = 0;
    public static final int VIDEO_PLACEMENT_TYPE_IN_ARTICLE_VALUE = 3;
    public static final int VIDEO_PLACEMENT_TYPE_IN_BANNER_VALUE = 2;
    public static final int VIDEO_PLACEMENT_TYPE_IN_FEED_VALUE = 4;
    public static final int VIDEO_PLACEMENT_TYPE_IN_STREAM_VALUE = 1;
    private final int value;
    private static final i0.d<VideoPlacementType> internalValueMap = new i0.d<VideoPlacementType>() { // from class: com.explorestack.protobuf.adcom.VideoPlacementType.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.explorestack.protobuf.i0.d
        public VideoPlacementType findValueByNumber(int i10) {
            return VideoPlacementType.forNumber(i10);
        }
    };
    private static final VideoPlacementType[] VALUES = values();

    VideoPlacementType(int i10) {
        this.value = i10;
    }

    public static VideoPlacementType forNumber(int i10) {
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 != 3) {
                        if (i10 != 4) {
                            if (i10 != 5) {
                                return null;
                            }
                            return VIDEO_PLACEMENT_TYPE_INTERSTITIAL;
                        }
                        return VIDEO_PLACEMENT_TYPE_IN_FEED;
                    }
                    return VIDEO_PLACEMENT_TYPE_IN_ARTICLE;
                }
                return VIDEO_PLACEMENT_TYPE_IN_BANNER;
            }
            return VIDEO_PLACEMENT_TYPE_IN_STREAM;
        }
        return VIDEO_PLACEMENT_TYPE_INVALID;
    }

    public static final Descriptors.EnumDescriptor getDescriptor() {
        return b.a().getEnumTypes().get(30);
    }

    public static i0.d<VideoPlacementType> internalGetValueMap() {
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
    public static VideoPlacementType valueOf(int i10) {
        return forNumber(i10);
    }

    public static VideoPlacementType valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
        if (enumValueDescriptor.getType() == getDescriptor()) {
            if (enumValueDescriptor.getIndex() == -1) {
                return UNRECOGNIZED;
            }
            return VALUES[enumValueDescriptor.getIndex()];
        }
        throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
    }
}
