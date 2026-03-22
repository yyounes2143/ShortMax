package com.applovin.mediation;

import com.applovin.impl.mediation.MaxSegmentCollectionImpl;
import java.util.List;
/* loaded from: classes2.dex */
public abstract class MaxSegmentCollection {

    /* loaded from: classes2.dex */
    public interface Builder {
        Builder addSegment(MaxSegment maxSegment);

        MaxSegmentCollection build();
    }

    public static Builder builder() {
        return new MaxSegmentCollectionImpl.BuilderImpl();
    }

    public abstract List<MaxSegment> getSegments();
}
