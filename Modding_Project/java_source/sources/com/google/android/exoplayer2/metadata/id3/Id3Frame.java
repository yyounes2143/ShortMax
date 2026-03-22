package com.google.android.exoplayer2.metadata.id3;

import com.google.android.exoplayer2.metadata.Metadata;
/* loaded from: classes4.dex */
public abstract class Id3Frame implements Metadata.Entry {

    /* renamed from: a  reason: collision with root package name */
    public final String f18055a;

    public Id3Frame(String str) {
        this.f18055a = str;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String toString() {
        return this.f18055a;
    }
}
