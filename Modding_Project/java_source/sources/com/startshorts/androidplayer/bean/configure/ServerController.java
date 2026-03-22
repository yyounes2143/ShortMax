package com.startshorts.androidplayer.bean.configure;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ServerController.kt */
@Metadata
/* loaded from: classes6.dex */
public final class ServerController {
    @NotNull
    private String company_name;
    private int show_rating_duration;

    public ServerController() {
        this(null, 0, 3, null);
    }

    public static /* synthetic */ ServerController copy$default(ServerController serverController, String str, int i10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = serverController.company_name;
        }
        if ((i11 & 2) != 0) {
            i10 = serverController.show_rating_duration;
        }
        return serverController.copy(str, i10);
    }

    @NotNull
    public final String component1() {
        return this.company_name;
    }

    public final int component2() {
        return this.show_rating_duration;
    }

    @NotNull
    public final ServerController copy(@NotNull String company_name, int i10) {
        Intrinsics.checkNotNullParameter(company_name, "company_name");
        return new ServerController(company_name, i10);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ServerController)) {
            return false;
        }
        ServerController serverController = (ServerController) obj;
        if (Intrinsics.areEqual(this.company_name, serverController.company_name) && this.show_rating_duration == serverController.show_rating_duration) {
            return true;
        }
        return false;
    }

    @NotNull
    public final String getCompany_name() {
        return this.company_name;
    }

    public final int getShow_rating_duration() {
        return this.show_rating_duration;
    }

    public int hashCode() {
        return (this.company_name.hashCode() * 31) + Integer.hashCode(this.show_rating_duration);
    }

    public final void setCompany_name(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.company_name = str;
    }

    public final void setShow_rating_duration(int i10) {
        this.show_rating_duration = i10;
    }

    @NotNull
    public String toString() {
        return "ServerController(company_name=" + this.company_name + ", show_rating_duration=" + this.show_rating_duration + ')';
    }

    public ServerController(@NotNull String company_name, int i10) {
        Intrinsics.checkNotNullParameter(company_name, "company_name");
        this.company_name = company_name;
        this.show_rating_duration = i10;
    }

    public /* synthetic */ ServerController(String str, int i10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? "" : str, (i11 & 2) != 0 ? 3 : i10);
    }
}
