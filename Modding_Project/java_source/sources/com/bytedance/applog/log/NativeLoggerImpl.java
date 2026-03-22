package com.bytedance.applog.log;

import android.util.Log;
import java.util.List;
/* loaded from: classes3.dex */
public class NativeLoggerImpl extends LoggerImpl {
    private String tag;

    public NativeLoggerImpl() {
        this.tag = "NativeLoggerImpl";
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.applog.log.AbstractAppLogLogger
    public void process(int i10, int i11, List<String> list, Throwable th2, String str, Object... objArr) {
        LogInfo build = LogInfo.builder().category(i10).level(i11).thread(Thread.currentThread().getName()).throwable(th2).tags(getTags(list)).message(format(str, objArr)).build();
        int level = build.getLevel();
        if (level != 0) {
            if (level != 2) {
                if (level != 3) {
                    if (level != 4 && level != 5) {
                        Log.d(this.tag, build.toMessage(), build.getThrowable());
                        return;
                    } else {
                        Log.e(this.tag, build.toMessage(), build.getThrowable());
                        return;
                    }
                }
                Log.w(this.tag, build.toMessage(), build.getThrowable());
                return;
            }
            Log.i(this.tag, build.toMessage(), build.getThrowable());
            return;
        }
        Log.v(this.tag, build.toMessage(), build.getThrowable());
    }

    public NativeLoggerImpl(String str) {
        this.tag = str;
    }
}
