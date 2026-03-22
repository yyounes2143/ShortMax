package com.mbridge.msdk.playercommon.exoplayer2.metadata.id3;

import com.mbridge.msdk.playercommon.exoplayer2.metadata.Metadata;
import com.mbridge.msdk.playercommon.exoplayer2.util.Assertions;
/* loaded from: classes6.dex */
public abstract class Id3Frame implements Metadata.Entry {

    /* renamed from: id  reason: collision with root package name */
    public final String f28480id;

    public Id3Frame(String str) {
        this.f28480id = (String) Assertions.checkNotNull(str);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String toString() {
        return this.f28480id;
    }
}
