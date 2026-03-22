package com.facebook.soloader;

import android.content.Context;
import android.os.Parcel;
import android.os.StrictMode;
import com.facebook.soloader.l;
import com.facebook.soloader.y;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
/* compiled from: BackupSoSource.java */
/* loaded from: classes2.dex */
public class c extends y implements s {

    /* renamed from: f  reason: collision with root package name */
    private final ArrayList<l> f16834f;

    /* renamed from: g  reason: collision with root package name */
    protected boolean f16835g;

    /* JADX INFO: Access modifiers changed from: protected */
    /* compiled from: BackupSoSource.java */
    /* loaded from: classes2.dex */
    public class a extends y.e {
        protected a() {
        }

        @Override // com.facebook.soloader.y.e
        public y.c[] d() throws IOException {
            ArrayList arrayList = new ArrayList();
            Iterator it = c.this.f16834f.iterator();
            while (it.hasNext()) {
                y.e q10 = ((l) it.next()).q();
                try {
                    arrayList.addAll(Arrays.asList(q10.d()));
                    q10.close();
                } catch (Throwable th2) {
                    if (q10 != null) {
                        try {
                            q10.close();
                        } catch (Throwable th3) {
                            th2.addSuppressed(th3);
                        }
                    }
                    throw th2;
                }
            }
            return (y.c[]) arrayList.toArray(new y.c[arrayList.size()]);
        }

        @Override // com.facebook.soloader.y.e
        public void g(File file) throws IOException {
            Iterator it = c.this.f16834f.iterator();
            while (it.hasNext()) {
                l.b bVar = (l.b) ((l) it.next()).q();
                try {
                    bVar.g(file);
                    bVar.close();
                } catch (Throwable th2) {
                    if (bVar != null) {
                        try {
                            bVar.close();
                        } catch (Throwable th3) {
                            th2.addSuppressed(th3);
                        }
                    }
                    throw th2;
                }
            }
        }
    }

    public c(Context context, String str, boolean z10) {
        super(context, str, z10);
        ArrayList<l> arrayList = new ArrayList<>();
        this.f16834f = arrayList;
        this.f16835g = false;
        arrayList.add(new l(context, str, new File(context.getApplicationInfo().sourceDir), "^lib/([^/]+)/([^/]+\\.so)$"));
        w(context, str);
    }

    private void w(Context context, String str) {
        if (context.getApplicationInfo().splitSourceDirs == null) {
            return;
        }
        try {
            for (String str2 : context.getApplicationInfo().splitSourceDirs) {
                l lVar = new l(context, str, new File(str2), "^lib/([^/]+)/([^/]+\\.so)$");
                if (lVar.v()) {
                    o.g("BackupSoSource", "adding backup source from split: " + lVar.toString());
                    this.f16834f.add(lVar);
                }
            }
        } catch (IOException e10) {
            o.h("BackupSoSource", "failed to read split apks", e10);
        }
    }

    @Override // com.facebook.soloader.s
    public w b(Context context) {
        c cVar = new c(context, this.f16843a.getName());
        try {
            cVar.e(0);
            return cVar;
        } catch (IOException e10) {
            throw new RuntimeException(e10);
        }
    }

    @Override // com.facebook.soloader.f, com.facebook.soloader.w
    public String c() {
        return "BackupSoSource";
    }

    @Override // com.facebook.soloader.f, com.facebook.soloader.w
    public int d(String str, int i10, StrictMode.ThreadPolicy threadPolicy) throws IOException {
        if (!this.f16835g) {
            return 0;
        }
        return super.d(str, i10, threadPolicy);
    }

    @Override // com.facebook.soloader.y, com.facebook.soloader.w
    public void e(int i10) throws IOException {
        if ((i10 & 8) != 0) {
            return;
        }
        super.e(i10);
        this.f16835g = true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.soloader.y
    public byte[] n() throws IOException {
        Parcel obtain = Parcel.obtain();
        try {
            obtain.writeByte((byte) 3);
            obtain.writeInt(SysUtil.g(this.f16875d));
            obtain.writeInt(this.f16834f.size());
            Iterator<l> it = this.f16834f.iterator();
            while (it.hasNext()) {
                obtain.writeByteArray(it.next().n());
            }
            String str = this.f16875d.getApplicationInfo().sourceDir;
            if (str == null) {
                obtain.writeByte((byte) 1);
                byte[] marshall = obtain.marshall();
                obtain.recycle();
                return marshall;
            }
            File canonicalFile = new File(str).getCanonicalFile();
            if (!canonicalFile.exists()) {
                obtain.writeByte((byte) 1);
                byte[] marshall2 = obtain.marshall();
                obtain.recycle();
                return marshall2;
            }
            obtain.writeByte((byte) 2);
            obtain.writeString(canonicalFile.getPath());
            obtain.writeLong(canonicalFile.lastModified());
            byte[] marshall3 = obtain.marshall();
            obtain.recycle();
            return marshall3;
        } catch (Throwable th2) {
            obtain.recycle();
            throw th2;
        }
    }

    @Override // com.facebook.soloader.y
    public y.c[] o() throws IOException {
        y.e q10 = this.f16834f.get(0).q();
        try {
            y.c[] d10 = q10.d();
            q10.close();
            return d10;
        } catch (Throwable th2) {
            if (q10 != null) {
                try {
                    q10.close();
                } catch (Throwable th3) {
                    th2.addSuppressed(th3);
                }
            }
            throw th2;
        }
    }

    @Override // com.facebook.soloader.y
    protected y.e q() throws IOException {
        return new a();
    }

    @Override // com.facebook.soloader.f, com.facebook.soloader.w
    public String toString() {
        String name;
        try {
            name = String.valueOf(this.f16843a.getCanonicalPath());
        } catch (IOException unused) {
            name = this.f16843a.getName();
        }
        return c() + "[root = " + name + " flags = " + this.f16844b + " apks = " + this.f16834f.toString() + "]";
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x003a, code lost:
        r9 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x001a, code lost:
        com.facebook.soloader.o.b("SoLoader", "Found " + r9 + " in " + c());
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean x(java.lang.String r9, int r10) throws java.io.IOException {
        /*
            r8 = this;
            com.facebook.soloader.y$e r0 = r8.q()
            com.facebook.soloader.y$c[] r1 = r0.d()     // Catch: java.lang.Throwable -> L3c
            int r2 = r1.length     // Catch: java.lang.Throwable -> L3c
            r3 = 0
            r4 = r3
        Lb:
            java.lang.String r5 = "SoLoader"
            r6 = 1
            if (r4 >= r2) goto L41
            r7 = r1[r4]     // Catch: java.lang.Throwable -> L3c
            java.lang.String r7 = r7.f16882a     // Catch: java.lang.Throwable -> L3c
            boolean r7 = r7.equals(r9)     // Catch: java.lang.Throwable -> L3c
            if (r7 == 0) goto L3e
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L3c
            r1.<init>()     // Catch: java.lang.Throwable -> L3c
            java.lang.String r2 = "Found "
            r1.append(r2)     // Catch: java.lang.Throwable -> L3c
            r1.append(r9)     // Catch: java.lang.Throwable -> L3c
            java.lang.String r9 = " in "
            r1.append(r9)     // Catch: java.lang.Throwable -> L3c
            java.lang.String r9 = r8.c()     // Catch: java.lang.Throwable -> L3c
            r1.append(r9)     // Catch: java.lang.Throwable -> L3c
            java.lang.String r9 = r1.toString()     // Catch: java.lang.Throwable -> L3c
            com.facebook.soloader.o.b(r5, r9)     // Catch: java.lang.Throwable -> L3c
            r9 = r6
            goto L42
        L3c:
            r9 = move-exception
            goto L64
        L3e:
            int r4 = r4 + 1
            goto Lb
        L41:
            r9 = r3
        L42:
            r0.close()
            if (r9 != 0) goto L48
            return r3
        L48:
            java.lang.StringBuilder r9 = new java.lang.StringBuilder
            r9.<init>()
            java.lang.String r0 = "Preparing "
            r9.append(r0)
            java.lang.String r0 = r8.c()
            r9.append(r0)
            java.lang.String r9 = r9.toString()
            com.facebook.soloader.o.b(r5, r9)
            r8.e(r10)
            return r6
        L64:
            if (r0 == 0) goto L6e
            r0.close()     // Catch: java.lang.Throwable -> L6a
            goto L6e
        L6a:
            r10 = move-exception
            r9.addSuppressed(r10)
        L6e:
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.soloader.c.x(java.lang.String, int):boolean");
    }

    public c(Context context, String str) {
        this(context, str, true);
    }
}
