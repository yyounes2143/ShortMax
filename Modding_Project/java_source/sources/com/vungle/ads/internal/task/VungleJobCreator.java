package com.vungle.ads.internal.task;

import android.content.Context;
import com.vungle.ads.internal.util.PathProvider;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: VungleJobCreator.kt */
@Metadata
/* loaded from: classes7.dex */
public final class VungleJobCreator implements JobCreator {
    @NotNull
    private final Context context;
    @NotNull
    private final PathProvider pathProvider;

    public VungleJobCreator(@NotNull Context context, @NotNull PathProvider pathProvider) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(pathProvider, "pathProvider");
        this.context = context;
        this.pathProvider = pathProvider;
    }

    @Override // com.vungle.ads.internal.task.JobCreator
    @NotNull
    public Job create(@NotNull String tag) throws UnknownTagException {
        Intrinsics.checkNotNullParameter(tag, "tag");
        if (tag.length() != 0) {
            if (Intrinsics.areEqual(tag, CleanupJob.TAG)) {
                return new CleanupJob(this.context, this.pathProvider);
            }
            if (Intrinsics.areEqual(tag, ResendTpatJob.TAG)) {
                return new ResendTpatJob(this.context, this.pathProvider);
            }
            throw new UnknownTagException("Unknown Job Type " + tag);
        }
        throw new UnknownTagException("Job tag is null");
    }

    @NotNull
    public final Context getContext() {
        return this.context;
    }

    @NotNull
    public final PathProvider getPathProvider() {
        return this.pathProvider;
    }
}
