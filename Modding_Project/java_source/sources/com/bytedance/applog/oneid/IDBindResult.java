package com.bytedance.applog.oneid;

import androidx.annotation.Keep;
import com.bytedance.bdtracker.a;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Keep
@Metadata
/* loaded from: classes3.dex */
public final class IDBindResult {
    @Nullable
    public final String failedIdList;
    @Nullable
    public final String newSsid;

    public IDBindResult(@Nullable String str, @Nullable String str2) {
        this.newSsid = str;
        this.failedIdList = str2;
    }

    public static /* synthetic */ IDBindResult copy$default(IDBindResult iDBindResult, String str, String str2, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = iDBindResult.newSsid;
        }
        if ((i10 & 2) != 0) {
            str2 = iDBindResult.failedIdList;
        }
        return iDBindResult.copy(str, str2);
    }

    @Nullable
    public final String component1() {
        return this.newSsid;
    }

    @Nullable
    public final String component2() {
        return this.failedIdList;
    }

    @NotNull
    public final IDBindResult copy(@Nullable String str, @Nullable String str2) {
        return new IDBindResult(str, str2);
    }

    public boolean equals(@Nullable Object obj) {
        if (this != obj) {
            if (obj instanceof IDBindResult) {
                IDBindResult iDBindResult = (IDBindResult) obj;
                if (!Intrinsics.areEqual(this.newSsid, iDBindResult.newSsid) || !Intrinsics.areEqual(this.failedIdList, iDBindResult.failedIdList)) {
                    return false;
                }
                return true;
            }
            return false;
        }
        return true;
    }

    @Nullable
    public final String getFailedIdList() {
        return this.failedIdList;
    }

    @Nullable
    public final String getNewSsid() {
        return this.newSsid;
    }

    public int hashCode() {
        int i10;
        String str = this.newSsid;
        int i11 = 0;
        if (str != null) {
            i10 = str.hashCode();
        } else {
            i10 = 0;
        }
        int i12 = i10 * 31;
        String str2 = this.failedIdList;
        if (str2 != null) {
            i11 = str2.hashCode();
        }
        return i12 + i11;
    }

    @NotNull
    public String toString() {
        StringBuilder a10 = a.a("IDBindResult(newSsid=");
        a10.append(this.newSsid);
        a10.append(", failedIdList=");
        a10.append(this.failedIdList);
        a10.append(")");
        return a10.toString();
    }
}
