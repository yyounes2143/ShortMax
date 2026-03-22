package com.startshorts.androidplayer.bean.account;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ExtraUserInfo.kt */
@Metadata
/* loaded from: classes6.dex */
public final class ExtraUserInfo {
    @Nullable
    private String city;
    @Nullable
    private String country;
    @Nullable
    private String email;
    @Nullable
    private String firstName;
    @Nullable
    private String lastName;
    @Nullable
    private String phone;

    @Nullable
    public final String getCity() {
        return this.city;
    }

    @Nullable
    public final String getCountry() {
        return this.country;
    }

    @Nullable
    public final String getEmail() {
        return this.email;
    }

    @Nullable
    public final String getFirstName() {
        return this.firstName;
    }

    @Nullable
    public final String getLastName() {
        return this.lastName;
    }

    @Nullable
    public final String getPhone() {
        return this.phone;
    }

    public final boolean isSame(@NotNull ExtraUserInfo info) {
        Intrinsics.checkNotNullParameter(info, "info");
        if (Intrinsics.areEqual(this.firstName, info.firstName) && Intrinsics.areEqual(this.lastName, info.lastName) && Intrinsics.areEqual(this.email, info.email) && Intrinsics.areEqual(this.phone, info.phone) && Intrinsics.areEqual(this.country, info.country) && Intrinsics.areEqual(this.city, info.city)) {
            return true;
        }
        return false;
    }

    public final void setCity(@Nullable String str) {
        this.city = str;
    }

    public final void setCountry(@Nullable String str) {
        this.country = str;
    }

    public final void setEmail(@Nullable String str) {
        this.email = str;
    }

    public final void setFirstName(@Nullable String str) {
        this.firstName = str;
    }

    public final void setLastName(@Nullable String str) {
        this.lastName = str;
    }

    public final void setPhone(@Nullable String str) {
        this.phone = str;
    }

    @NotNull
    public String toString() {
        return "ExtraUserInfo(firstName=" + this.firstName + ", lastName=" + this.lastName + ", email=" + this.email + ", phone=" + this.phone + ", country=" + this.country + ", city=" + this.city + ')';
    }
}
