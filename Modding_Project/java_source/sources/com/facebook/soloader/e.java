package com.facebook.soloader;

import android.annotation.SuppressLint;
import android.content.res.AssetManager;
import android.os.StrictMode;
import androidx.credentials.exceptions.publickeycredential.DomExceptionUtils;
import java.io.IOException;
import java.io.InputStream;
import java.util.HashSet;
import java.util.Set;
/* compiled from: DirectSplitSoSource.java */
/* loaded from: classes2.dex */
public class e extends w {

    /* renamed from: a  reason: collision with root package name */
    protected final String f16840a;

    /* renamed from: b  reason: collision with root package name */
    protected p f16841b = null;

    /* renamed from: c  reason: collision with root package name */
    protected Set<String> f16842c = null;

    public e(String str) {
        this.f16840a = str;
    }

    static String g(String str) {
        if ("base".equals(str)) {
            return SoLoader.f16820d.getApplicationInfo().sourceDir;
        }
        String[] strArr = SoLoader.f16820d.getApplicationInfo().splitSourceDirs;
        if (strArr != null) {
            String str2 = "split_" + str + ".apk";
            for (String str3 : strArr) {
                if (str3.endsWith(str2)) {
                    return str3;
                }
            }
            throw new IllegalStateException("Could not find " + str + " split");
        }
        throw new IllegalStateException("No splits avaiable");
    }

    @Override // com.facebook.soloader.w
    public String c() {
        return "DirectSplitSoSource";
    }

    @Override // com.facebook.soloader.w
    public int d(String str, int i10, StrictMode.ThreadPolicy threadPolicy) {
        Set<String> set = this.f16842c;
        if (set != null) {
            if (set.contains(str)) {
                return h(str, i10);
            }
            return 0;
        }
        throw new IllegalStateException("prepare not called");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.soloader.w
    public void e(int i10) throws IOException {
        AssetManager assets = SoLoader.f16820d.getAssets();
        InputStream open = assets.open(this.f16840a + ".soloader-manifest");
        try {
            this.f16841b = p.b(open);
            if (open != null) {
                open.close();
            }
            this.f16842c = new HashSet(this.f16841b.f16870b);
        } catch (Throwable th2) {
            if (open != null) {
                try {
                    open.close();
                } catch (Throwable th3) {
                    th2.addSuppressed(th3);
                }
            }
            throw th2;
        }
    }

    public String f(String str) {
        Set<String> set = this.f16842c;
        if (set != null && this.f16841b != null) {
            if (set.contains(str)) {
                return g(this.f16840a) + "!/lib/" + this.f16841b.f16869a + DomExceptionUtils.SEPARATOR + str;
            }
            return null;
        }
        throw new IllegalStateException("prepare not called");
    }

    @SuppressLint({"MissingSoLoaderLibrary"})
    protected int h(String str, int i10) {
        String f10 = f(str);
        f10.getClass();
        System.load(f10);
        return 1;
    }
}
