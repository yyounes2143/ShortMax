package com.facebook.share.model;

import android.net.Uri;
import android.os.Parcel;
import com.facebook.share.model.ShareContent;
import com.facebook.share.model.ShareHashtag;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ShareContent.kt */
@Metadata
/* loaded from: classes3.dex */
public abstract class ShareContent<M extends ShareContent<M, B>, B> implements ShareModel {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private final Uri f16757a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private final List<String> f16758b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private final String f16759c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private final String f16760d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private final String f16761e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private final ShareHashtag f16762f;

    /* JADX INFO: Access modifiers changed from: protected */
    public ShareContent(@NotNull Parcel parcel) {
        Intrinsics.checkNotNullParameter(parcel, "parcel");
        this.f16757a = (Uri) parcel.readParcelable(Uri.class.getClassLoader());
        this.f16758b = a(parcel);
        this.f16759c = parcel.readString();
        this.f16760d = parcel.readString();
        this.f16761e = parcel.readString();
        this.f16762f = new ShareHashtag.a().d(parcel).a();
    }

    private final List<String> a(Parcel parcel) {
        ArrayList arrayList = new ArrayList();
        parcel.readStringList(arrayList);
        if (arrayList.isEmpty()) {
            return null;
        }
        return Collections.unmodifiableList(arrayList);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NotNull Parcel out, int i10) {
        Intrinsics.checkNotNullParameter(out, "out");
        out.writeParcelable(this.f16757a, 0);
        out.writeStringList(this.f16758b);
        out.writeString(this.f16759c);
        out.writeString(this.f16760d);
        out.writeString(this.f16761e);
        out.writeParcelable(this.f16762f, 0);
    }
}
