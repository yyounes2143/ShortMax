package com.startshorts.androidplayer.bean.configure;

import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SdkConfigList.kt */
@Metadata
/* loaded from: classes6.dex */
public final class SdkConfigList {
    @Nullable
    private final List<SdkConfig> configList;

    public SdkConfigList(@Nullable List<SdkConfig> list) {
        this.configList = list;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ SdkConfigList copy$default(SdkConfigList sdkConfigList, List list, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            list = sdkConfigList.configList;
        }
        return sdkConfigList.copy(list);
    }

    @Nullable
    public final List<SdkConfig> component1() {
        return this.configList;
    }

    @NotNull
    public final SdkConfigList copy(@Nullable List<SdkConfig> list) {
        return new SdkConfigList(list);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof SdkConfigList) && Intrinsics.areEqual(this.configList, ((SdkConfigList) obj).configList)) {
            return true;
        }
        return false;
    }

    @Nullable
    public final SdkConfig getAfConfig() {
        List<SdkConfig> list = this.configList;
        Object obj = null;
        if (list == null || list.isEmpty()) {
            return null;
        }
        Iterator<T> it = this.configList.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            Object next = it.next();
            if (Intrinsics.areEqual(((SdkConfig) next).getName(), SdkConfig.AF)) {
                obj = next;
                break;
            }
        }
        return (SdkConfig) obj;
    }

    @Nullable
    public final SdkConfig getAjConfig() {
        List<SdkConfig> list = this.configList;
        Object obj = null;
        if (list == null || list.isEmpty()) {
            return null;
        }
        Iterator<T> it = this.configList.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            Object next = it.next();
            if (Intrinsics.areEqual(((SdkConfig) next).getName(), SdkConfig.AJ)) {
                obj = next;
                break;
            }
        }
        return (SdkConfig) obj;
    }

    @Nullable
    public final List<SdkConfig> getConfigList() {
        return this.configList;
    }

    public int hashCode() {
        List<SdkConfig> list = this.configList;
        if (list == null) {
            return 0;
        }
        return list.hashCode();
    }

    @NotNull
    public String toString() {
        return "SdkConfigList(configList=" + this.configList + ')';
    }
}
