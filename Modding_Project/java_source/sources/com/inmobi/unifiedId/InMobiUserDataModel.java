package com.inmobi.unifiedId;

import java.util.HashMap;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata
/* loaded from: classes5.dex */
public final class InMobiUserDataModel {

    /* renamed from: a  reason: collision with root package name */
    public final InMobiUserDataTypes f25523a;

    /* renamed from: b  reason: collision with root package name */
    public final InMobiUserDataTypes f25524b;

    /* renamed from: c  reason: collision with root package name */
    public final HashMap f25525c;

    @Metadata
    @SourceDebugExtension({"SMAP\nInMobiUserDataModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InMobiUserDataModel.kt\ncom/inmobi/unifiedId/InMobiUserDataModel$Builder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,26:1\n1#2:27\n*E\n"})
    /* loaded from: classes5.dex */
    public static final class Builder {

        /* renamed from: a  reason: collision with root package name */
        public InMobiUserDataTypes f25526a;

        /* renamed from: b  reason: collision with root package name */
        public InMobiUserDataTypes f25527b;

        /* renamed from: c  reason: collision with root package name */
        public HashMap f25528c;

        @NotNull
        public final InMobiUserDataModel build() {
            return new InMobiUserDataModel(this.f25526a, this.f25527b, this.f25528c);
        }

        @NotNull
        public final Builder emailId(@Nullable InMobiUserDataTypes inMobiUserDataTypes) {
            this.f25527b = inMobiUserDataTypes;
            return this;
        }

        @NotNull
        public final Builder extras(@Nullable HashMap<String, String> hashMap) {
            this.f25528c = hashMap;
            return this;
        }

        @NotNull
        public final Builder phoneNumber(@Nullable InMobiUserDataTypes inMobiUserDataTypes) {
            this.f25526a = inMobiUserDataTypes;
            return this;
        }
    }

    public InMobiUserDataModel(@Nullable InMobiUserDataTypes inMobiUserDataTypes, @Nullable InMobiUserDataTypes inMobiUserDataTypes2, @Nullable HashMap<String, String> hashMap) {
        this.f25523a = inMobiUserDataTypes;
        this.f25524b = inMobiUserDataTypes2;
        this.f25525c = hashMap;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ InMobiUserDataModel copy$default(InMobiUserDataModel inMobiUserDataModel, InMobiUserDataTypes inMobiUserDataTypes, InMobiUserDataTypes inMobiUserDataTypes2, HashMap hashMap, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            inMobiUserDataTypes = inMobiUserDataModel.f25523a;
        }
        if ((i10 & 2) != 0) {
            inMobiUserDataTypes2 = inMobiUserDataModel.f25524b;
        }
        if ((i10 & 4) != 0) {
            hashMap = inMobiUserDataModel.f25525c;
        }
        return inMobiUserDataModel.copy(inMobiUserDataTypes, inMobiUserDataTypes2, hashMap);
    }

    @Nullable
    public final InMobiUserDataTypes component1() {
        return this.f25523a;
    }

    @Nullable
    public final InMobiUserDataTypes component2() {
        return this.f25524b;
    }

    @Nullable
    public final HashMap<String, String> component3() {
        return this.f25525c;
    }

    @NotNull
    public final InMobiUserDataModel copy(@Nullable InMobiUserDataTypes inMobiUserDataTypes, @Nullable InMobiUserDataTypes inMobiUserDataTypes2, @Nullable HashMap<String, String> hashMap) {
        return new InMobiUserDataModel(inMobiUserDataTypes, inMobiUserDataTypes2, hashMap);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof InMobiUserDataModel)) {
            return false;
        }
        InMobiUserDataModel inMobiUserDataModel = (InMobiUserDataModel) obj;
        if (Intrinsics.areEqual(this.f25523a, inMobiUserDataModel.f25523a) && Intrinsics.areEqual(this.f25524b, inMobiUserDataModel.f25524b) && Intrinsics.areEqual(this.f25525c, inMobiUserDataModel.f25525c)) {
            return true;
        }
        return false;
    }

    @Nullable
    public final InMobiUserDataTypes getEmailId() {
        return this.f25524b;
    }

    @Nullable
    public final HashMap<String, String> getExtras() {
        return this.f25525c;
    }

    @Nullable
    public final InMobiUserDataTypes getPhoneNumber() {
        return this.f25523a;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2;
        InMobiUserDataTypes inMobiUserDataTypes = this.f25523a;
        int i10 = 0;
        if (inMobiUserDataTypes == null) {
            hashCode = 0;
        } else {
            hashCode = inMobiUserDataTypes.hashCode();
        }
        int i11 = hashCode * 31;
        InMobiUserDataTypes inMobiUserDataTypes2 = this.f25524b;
        if (inMobiUserDataTypes2 == null) {
            hashCode2 = 0;
        } else {
            hashCode2 = inMobiUserDataTypes2.hashCode();
        }
        int i12 = (i11 + hashCode2) * 31;
        HashMap hashMap = this.f25525c;
        if (hashMap != null) {
            i10 = hashMap.hashCode();
        }
        return i12 + i10;
    }

    @NotNull
    public String toString() {
        return "InMobiUserDataModel(phoneNumber=" + this.f25523a + ", emailId=" + this.f25524b + ", extras=" + this.f25525c + ')';
    }
}
