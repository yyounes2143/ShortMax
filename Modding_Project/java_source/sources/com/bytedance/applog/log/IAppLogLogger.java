package com.bytedance.applog.log;

import java.util.List;
/* loaded from: classes3.dex */
public interface IAppLogLogger {
    void ast(String str, Throwable th2, Object... objArr);

    void debug(int i10, String str, Object... objArr);

    void debug(int i10, List<String> list, String str, Object... objArr);

    void debug(String str, Object... objArr);

    void debug(List<String> list, String str, Object... objArr);

    void error(int i10, String str, Throwable th2, Object... objArr);

    void error(int i10, String str, Object... objArr);

    void error(int i10, List<String> list, String str, Throwable th2, Object... objArr);

    void error(int i10, List<String> list, String str, Object... objArr);

    void error(String str, Throwable th2, Object... objArr);

    void error(String str, Object... objArr);

    void error(List<String> list, String str, Throwable th2, Object... objArr);

    void error(List<String> list, String str, Object... objArr);

    void info(int i10, String str, Object... objArr);

    void info(int i10, List<String> list, String str, Object... objArr);

    void info(String str, Object... objArr);

    void info(List<String> list, String str, Object... objArr);

    void setAppId(String str);

    void verbose(int i10, String str, Object... objArr);

    void verbose(int i10, List<String> list, String str, Object... objArr);

    void verbose(String str, Object... objArr);

    void verbose(List<String> list, String str, Object... objArr);

    void warn(int i10, String str, Object... objArr);

    void warn(int i10, List<String> list, String str, Object... objArr);

    void warn(String str, Object... objArr);

    void warn(List<String> list, String str, Object... objArr);
}
