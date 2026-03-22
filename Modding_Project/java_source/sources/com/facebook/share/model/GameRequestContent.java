package com.facebook.share.model;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: GameRequestContent.kt */
@Metadata
/* loaded from: classes3.dex */
public final class GameRequestContent implements ShareModel {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private final String f16744a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private final String f16745b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private final List<String> f16746c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private final String f16747d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private final String f16748e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private final ActionType f16749f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private final String f16750g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private final Filters f16751h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private final List<String> f16752i;
    @NotNull

    /* renamed from: j  reason: collision with root package name */
    public static final b f16743j = new b(null);
    @NotNull
    public static final Parcelable.Creator<GameRequestContent> CREATOR = new a();

    /* compiled from: GameRequestContent.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public enum ActionType {
        SEND,
        ASKFOR,
        TURN,
        INVITE
    }

    /* compiled from: GameRequestContent.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public enum Filters {
        APP_USERS,
        APP_NON_USERS,
        EVERYBODY
    }

    /* compiled from: GameRequestContent.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class a implements Parcelable.Creator<GameRequestContent> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        @NotNull
        /* renamed from: a */
        public GameRequestContent createFromParcel(@NotNull Parcel parcel) {
            Intrinsics.checkNotNullParameter(parcel, "parcel");
            return new GameRequestContent(parcel);
        }

        @Override // android.os.Parcelable.Creator
        @NotNull
        /* renamed from: b */
        public GameRequestContent[] newArray(int i10) {
            return new GameRequestContent[i10];
        }
    }

    /* compiled from: GameRequestContent.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class b {
        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private b() {
        }
    }

    public GameRequestContent(@NotNull Parcel parcel) {
        Intrinsics.checkNotNullParameter(parcel, "parcel");
        this.f16744a = parcel.readString();
        this.f16745b = parcel.readString();
        this.f16746c = parcel.createStringArrayList();
        this.f16747d = parcel.readString();
        this.f16748e = parcel.readString();
        this.f16749f = (ActionType) parcel.readSerializable();
        this.f16750g = parcel.readString();
        this.f16751h = (Filters) parcel.readSerializable();
        this.f16752i = parcel.createStringArrayList();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NotNull Parcel out, int i10) {
        Intrinsics.checkNotNullParameter(out, "out");
        out.writeString(this.f16744a);
        out.writeString(this.f16745b);
        out.writeStringList(this.f16746c);
        out.writeString(this.f16747d);
        out.writeString(this.f16748e);
        out.writeSerializable(this.f16749f);
        out.writeString(this.f16750g);
        out.writeSerializable(this.f16751h);
        out.writeStringList(this.f16752i);
    }
}
