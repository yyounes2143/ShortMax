package com.google.android.gms.common.data;

import androidx.annotation.NonNull;
/* compiled from: com.google.android.gms:play-services-base@@18.4.0 */
/* loaded from: classes4.dex */
public interface DataBufferObserver {

    /* compiled from: com.google.android.gms:play-services-base@@18.4.0 */
    /* loaded from: classes4.dex */
    public interface Observable {
        void addObserver(@NonNull DataBufferObserver dataBufferObserver);

        void removeObserver(@NonNull DataBufferObserver dataBufferObserver);
    }

    void onDataChanged();

    void onDataRangeChanged(int i10, int i11);

    void onDataRangeInserted(int i10, int i11);

    void onDataRangeMoved(int i10, int i11, int i12);

    void onDataRangeRemoved(int i10, int i11);
}
