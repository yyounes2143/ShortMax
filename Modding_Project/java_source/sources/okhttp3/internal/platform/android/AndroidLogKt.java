package okhttp3.internal.platform.android;

import java.util.logging.Level;
import java.util.logging.LogRecord;
import kotlin.Metadata;
/* compiled from: AndroidLog.kt */
@Metadata
/* loaded from: classes8.dex */
public final class AndroidLogKt {
    /* JADX INFO: Access modifiers changed from: private */
    public static final int b(LogRecord logRecord) {
        int intValue = logRecord.getLevel().intValue();
        Level level = Level.INFO;
        if (intValue > level.intValue()) {
            return 5;
        }
        if (logRecord.getLevel().intValue() == level.intValue()) {
            return 4;
        }
        return 3;
    }
}
