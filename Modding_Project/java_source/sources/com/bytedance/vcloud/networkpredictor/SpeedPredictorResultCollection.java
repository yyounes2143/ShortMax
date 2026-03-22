package com.bytedance.vcloud.networkpredictor;

import java.util.ArrayList;
/* loaded from: classes3.dex */
public class SpeedPredictorResultCollection {
    private ArrayList<SpeedPredictorResult> resultCollection = new ArrayList<>();

    public void add(SpeedPredictorResult speedPredictorResult) {
        this.resultCollection.add(speedPredictorResult);
    }

    public SpeedPredictorResult get(int i10) {
        return this.resultCollection.get(i10);
    }

    public ArrayList<SpeedPredictorResult> getResultCollection() {
        return this.resultCollection;
    }

    public int size() {
        return this.resultCollection.size();
    }
}
