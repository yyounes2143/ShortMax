package androidx.work.impl.workers;

import androidx.work.Logger;
import androidx.work.impl.model.SystemIdInfo;
import androidx.work.impl.model.SystemIdInfoDao;
import androidx.work.impl.model.WorkNameDao;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.model.WorkSpecKt;
import androidx.work.impl.model.WorkTagDao;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: DiagnosticsWorker.kt */
@Metadata
/* loaded from: classes2.dex */
public final class DiagnosticsWorkerKt {
    @NotNull
    private static final String TAG;

    static {
        String tagWithPrefix = Logger.tagWithPrefix("DiagnosticsWrkr");
        Intrinsics.checkNotNullExpressionValue(tagWithPrefix, "tagWithPrefix(\"DiagnosticsWrkr\")");
        TAG = tagWithPrefix;
    }

    private static final String workSpecRow(WorkSpec workSpec, String str, Integer num, String str2) {
        return '\n' + workSpec.f1724id + "\t " + workSpec.workerClassName + "\t " + num + "\t " + workSpec.state.name() + "\t " + str + "\t " + str2 + '\t';
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String workSpecRows(WorkNameDao workNameDao, WorkTagDao workTagDao, SystemIdInfoDao systemIdInfoDao, List<WorkSpec> list) {
        Integer num;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("\n Id \t Class Name\t Job Id\t State\t Unique Name\t Tags\t");
        for (WorkSpec workSpec : list) {
            SystemIdInfo systemIdInfo = systemIdInfoDao.getSystemIdInfo(WorkSpecKt.generationalId(workSpec));
            if (systemIdInfo != null) {
                num = Integer.valueOf(systemIdInfo.systemId);
            } else {
                num = null;
            }
            sb2.append(workSpecRow(workSpec, CollectionsKt.A0(workNameDao.getNamesForWorkSpecId(workSpec.f1724id), ",", null, null, 0, null, null, 62, null), num, CollectionsKt.A0(workTagDao.getTagsForWorkSpecId(workSpec.f1724id), ",", null, null, 0, null, null, 62, null)));
        }
        String sb3 = sb2.toString();
        Intrinsics.checkNotNullExpressionValue(sb3, "StringBuilder().apply(builderAction).toString()");
        return sb3;
    }
}
