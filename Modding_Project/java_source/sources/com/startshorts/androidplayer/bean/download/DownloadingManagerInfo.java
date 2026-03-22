package com.startshorts.androidplayer.bean.download;

import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: DownloadingManagerInfo.kt */
@Metadata
@SourceDebugExtension({"SMAP\nDownloadingManagerInfo.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DownloadingManagerInfo.kt\ncom/startshorts/androidplayer/bean/download/DownloadingManagerInfo\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,24:1\n1#2:25\n*E\n"})
/* loaded from: classes6.dex */
public final class DownloadingManagerInfo extends DownloadManagerItem {
    private boolean select;
    private int shortPlayId;
    @Nullable
    private String shortPlayName;
    @NotNull
    private List<DownloadTaskInfo> taskInfoList;

    public DownloadingManagerInfo(@NotNull List<DownloadTaskInfo> taskInfoList) {
        Intrinsics.checkNotNullParameter(taskInfoList, "taskInfoList");
        this.taskInfoList = taskInfoList;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ DownloadingManagerInfo copy$default(DownloadingManagerInfo downloadingManagerInfo, List list, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            list = downloadingManagerInfo.taskInfoList;
        }
        return downloadingManagerInfo.copy(list);
    }

    @NotNull
    public final List<DownloadTaskInfo> component1() {
        return this.taskInfoList;
    }

    @NotNull
    public final DownloadingManagerInfo copy(@NotNull List<DownloadTaskInfo> taskInfoList) {
        Intrinsics.checkNotNullParameter(taskInfoList, "taskInfoList");
        return new DownloadingManagerInfo(taskInfoList);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof DownloadingManagerInfo) && Intrinsics.areEqual(this.taskInfoList, ((DownloadingManagerInfo) obj).taskInfoList)) {
            return true;
        }
        return false;
    }

    public final int getDownloadingCount() {
        return this.taskInfoList.size();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0075  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.startshorts.androidplayer.bean.download.DownloadTaskInfo getDownloadingItem() {
        /*
            r5 = this;
            java.util.List<com.startshorts.androidplayer.bean.download.DownloadTaskInfo> r0 = r5.taskInfoList
            java.lang.Iterable r0 = (java.lang.Iterable) r0
            java.util.Iterator r0 = r0.iterator()
        L8:
            boolean r1 = r0.hasNext()
            r2 = 0
            if (r1 == 0) goto L1e
            java.lang.Object r1 = r0.next()
            r3 = r1
            com.startshorts.androidplayer.bean.download.DownloadTaskInfo r3 = (com.startshorts.androidplayer.bean.download.DownloadTaskInfo) r3
            int r3 = r3.getDownloadState()
            r4 = 2
            if (r3 != r4) goto L8
            goto L1f
        L1e:
            r1 = r2
        L1f:
            com.startshorts.androidplayer.bean.download.DownloadTaskInfo r1 = (com.startshorts.androidplayer.bean.download.DownloadTaskInfo) r1
            if (r1 != 0) goto L8d
            java.util.List<com.startshorts.androidplayer.bean.download.DownloadTaskInfo> r0 = r5.taskInfoList
            java.lang.Iterable r0 = (java.lang.Iterable) r0
            java.util.Iterator r0 = r0.iterator()
        L2b:
            boolean r1 = r0.hasNext()
            if (r1 == 0) goto L40
            java.lang.Object r1 = r0.next()
            r3 = r1
            com.startshorts.androidplayer.bean.download.DownloadTaskInfo r3 = (com.startshorts.androidplayer.bean.download.DownloadTaskInfo) r3
            int r3 = r3.getDownloadState()
            r4 = 3
            if (r3 != r4) goto L2b
            goto L41
        L40:
            r1 = r2
        L41:
            com.startshorts.androidplayer.bean.download.DownloadTaskInfo r1 = (com.startshorts.androidplayer.bean.download.DownloadTaskInfo) r1
            if (r1 != 0) goto L8d
            java.util.List<com.startshorts.androidplayer.bean.download.DownloadTaskInfo> r0 = r5.taskInfoList
            java.lang.Iterable r0 = (java.lang.Iterable) r0
            java.util.Iterator r0 = r0.iterator()
        L4d:
            boolean r1 = r0.hasNext()
            if (r1 == 0) goto L62
            java.lang.Object r1 = r0.next()
            r3 = r1
            com.startshorts.androidplayer.bean.download.DownloadTaskInfo r3 = (com.startshorts.androidplayer.bean.download.DownloadTaskInfo) r3
            int r3 = r3.getDownloadState()
            r4 = 5
            if (r3 != r4) goto L4d
            goto L63
        L62:
            r1 = r2
        L63:
            com.startshorts.androidplayer.bean.download.DownloadTaskInfo r1 = (com.startshorts.androidplayer.bean.download.DownloadTaskInfo) r1
            if (r1 != 0) goto L8d
            java.util.List<com.startshorts.androidplayer.bean.download.DownloadTaskInfo> r0 = r5.taskInfoList
            java.lang.Iterable r0 = (java.lang.Iterable) r0
            java.util.Iterator r0 = r0.iterator()
        L6f:
            boolean r1 = r0.hasNext()
            if (r1 == 0) goto L8a
            java.lang.Object r1 = r0.next()
            r3 = r1
            com.startshorts.androidplayer.bean.download.DownloadTaskInfo r3 = (com.startshorts.androidplayer.bean.download.DownloadTaskInfo) r3
            int r4 = r3.getDownloadState()
            if (r4 == 0) goto L89
            int r3 = r3.getDownloadState()
            r4 = 1
            if (r3 != r4) goto L6f
        L89:
            r2 = r1
        L8a:
            r1 = r2
            com.startshorts.androidplayer.bean.download.DownloadTaskInfo r1 = (com.startshorts.androidplayer.bean.download.DownloadTaskInfo) r1
        L8d:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.bean.download.DownloadingManagerInfo.getDownloadingItem():com.startshorts.androidplayer.bean.download.DownloadTaskInfo");
    }

    public final boolean getSelect() {
        return this.select;
    }

    public final int getShortPlayId() {
        return this.shortPlayId;
    }

    @Nullable
    public final String getShortPlayName() {
        return this.shortPlayName;
    }

    @NotNull
    public final List<DownloadTaskInfo> getTaskInfoList() {
        return this.taskInfoList;
    }

    public int hashCode() {
        return this.taskInfoList.hashCode();
    }

    public final void setSelect(boolean z10) {
        this.select = z10;
    }

    public final void setShortPlayId(int i10) {
        this.shortPlayId = i10;
    }

    public final void setShortPlayName(@Nullable String str) {
        this.shortPlayName = str;
    }

    public final void setTaskInfoList(@NotNull List<DownloadTaskInfo> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.taskInfoList = list;
    }

    @NotNull
    public String toString() {
        return "DownloadingManagerInfo(taskInfoList=" + this.taskInfoList + ')';
    }
}
