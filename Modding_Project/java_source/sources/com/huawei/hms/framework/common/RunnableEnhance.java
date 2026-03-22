package com.huawei.hms.framework.common;
/* loaded from: classes5.dex */
public class RunnableEnhance implements Runnable {
    static final String TRANCELOGO = " -->";

    /* renamed from: a  reason: collision with root package name */
    private Runnable f22143a;

    /* renamed from: b  reason: collision with root package name */
    private String f22144b = Thread.currentThread().getName();

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableEnhance(Runnable runnable) {
        this.f22143a = runnable;
    }

    public String getParentName() {
        return this.f22144b;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f22143a.run();
    }
}
