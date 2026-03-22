package com.facebook.ads.androidx.media3.extractor.metadata.id3;

import com.facebook.ads.androidx.media3.common.Metadata;
import com.facebook.ads.redexgen.X.AbstractC10492c;
import com.facebook.ads.redexgen.X.C2796or;
/* loaded from: assets/audience_network.dex */
public abstract class Id3Frame implements Metadata.Entry {
    public final String A00;

    @Override // com.facebook.ads.androidx.media3.common.Metadata.Entry
    public final /* synthetic */ byte[] A9S() {
        return AbstractC10492c.A01(this);
    }

    @Override // com.facebook.ads.androidx.media3.common.Metadata.Entry
    public final /* synthetic */ C2796or A9T() {
        return AbstractC10492c.A00(this);
    }

    public Id3Frame(String str) {
        this.A00 = str;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String toString() {
        return this.A00;
    }
}
