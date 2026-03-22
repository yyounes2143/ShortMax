package com.hades.aar.storage.base;

import com.huawei.hms.framework.network.grs.GrsBaseInfo;
import com.startshorts.androidplayer.bean.order.OtherOrderResp;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import ss.a;
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@Metadata
/* loaded from: classes5.dex */
public final class UploadStatus {
    private static final /* synthetic */ a $ENTRIES;
    private static final /* synthetic */ UploadStatus[] $VALUES;
    public static final UploadStatus START = new UploadStatus("START", 0);
    public static final UploadStatus UPLOADING = new UploadStatus("UPLOADING", 1);
    public static final UploadStatus PAUSED = new UploadStatus("PAUSED", 2);
    public static final UploadStatus COMPLETED = new UploadStatus(OtherOrderResp.STATUS_COMPLETED, 3);
    public static final UploadStatus ERROR = new UploadStatus("ERROR", 4);
    public static final UploadStatus UNKNOWN = new UploadStatus(GrsBaseInfo.CountryCodeSource.UNKNOWN, 5);
    public static final UploadStatus CANCELED = new UploadStatus("CANCELED", 6);

    private static final /* synthetic */ UploadStatus[] $values() {
        return new UploadStatus[]{START, UPLOADING, PAUSED, COMPLETED, ERROR, UNKNOWN, CANCELED};
    }

    static {
        UploadStatus[] $values = $values();
        $VALUES = $values;
        $ENTRIES = kotlin.enums.a.a($values);
    }

    private UploadStatus(String str, int i10) {
    }

    @NotNull
    public static a<UploadStatus> getEntries() {
        return $ENTRIES;
    }

    public static UploadStatus valueOf(String str) {
        return (UploadStatus) Enum.valueOf(UploadStatus.class, str);
    }

    public static UploadStatus[] values() {
        return (UploadStatus[]) $VALUES.clone();
    }
}
