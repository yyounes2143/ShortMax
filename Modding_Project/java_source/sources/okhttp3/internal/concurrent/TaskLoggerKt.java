package okhttp3.internal.concurrent;

import com.applovin.shadow.okhttp3.internal.http2.Http2Connection;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import java.util.Arrays;
import java.util.logging.Logger;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import org.jetbrains.annotations.NotNull;
/* compiled from: TaskLogger.kt */
@Metadata
/* loaded from: classes8.dex */
public final class TaskLoggerKt {
    public static final /* synthetic */ void a(Task task, TaskQueue taskQueue, String str) {
        c(task, taskQueue, str);
    }

    @NotNull
    public static final String b(long j10) {
        String str;
        if (j10 <= -999500000) {
            str = ((j10 - 500000000) / ((long) Http2Connection.DEGRADED_PONG_TIMEOUT_NS)) + " s ";
        } else if (j10 <= -999500) {
            str = ((j10 - 500000) / ((long) TTVideoEngineInterface.PLAYER_TIME_BASE)) + " ms";
        } else if (j10 <= 0) {
            str = ((j10 - 500) / 1000) + " µs";
        } else if (j10 < 999500) {
            str = ((j10 + 500) / 1000) + " µs";
        } else if (j10 < 999500000) {
            str = ((j10 + 500000) / ((long) TTVideoEngineInterface.PLAYER_TIME_BASE)) + " ms";
        } else {
            str = ((j10 + 500000000) / ((long) Http2Connection.DEGRADED_PONG_TIMEOUT_NS)) + " s ";
        }
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        String format = String.format("%6s", Arrays.copyOf(new Object[]{str}, 1));
        Intrinsics.checkNotNullExpressionValue(format, "format(format, *args)");
        return format;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void c(Task task, TaskQueue taskQueue, String str) {
        Logger a10 = TaskRunner.f63747h.a();
        StringBuilder sb2 = new StringBuilder();
        sb2.append(taskQueue.f());
        sb2.append(' ');
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        String format = String.format("%-22s", Arrays.copyOf(new Object[]{str}, 1));
        Intrinsics.checkNotNullExpressionValue(format, "format(format, *args)");
        sb2.append(format);
        sb2.append(": ");
        sb2.append(task.b());
        a10.fine(sb2.toString());
    }
}
