package androidx.profileinstaller;

import android.content.res.AssetManager;
import android.os.Build;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.profileinstaller.ProfileInstaller;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.channels.FileChannel;
import java.nio.channels.FileLock;
import java.util.concurrent.Executor;
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes2.dex */
public class DeviceProfileWriter {
    @NonNull
    private final String mApkName;
    @NonNull
    private final AssetManager mAssetManager;
    @NonNull
    private final File mCurProfile;
    @NonNull
    private final ProfileInstaller.DiagnosticsCallback mDiagnostics;
    @NonNull
    private final Executor mExecutor;
    @Nullable
    private DexProfileData[] mProfile;
    @NonNull
    private final String mProfileMetaSourceLocation;
    @NonNull
    private final String mProfileSourceLocation;
    @Nullable
    private byte[] mTranscodedProfile;
    private boolean mDeviceSupportsAotProfile = false;
    @Nullable
    private final byte[] mDesiredVersion = desiredVersion();

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public DeviceProfileWriter(@NonNull AssetManager assetManager, @NonNull Executor executor, @NonNull ProfileInstaller.DiagnosticsCallback diagnosticsCallback, @NonNull String str, @NonNull String str2, @NonNull String str3, @NonNull File file) {
        this.mAssetManager = assetManager;
        this.mExecutor = executor;
        this.mDiagnostics = diagnosticsCallback;
        this.mApkName = str;
        this.mProfileSourceLocation = str2;
        this.mProfileMetaSourceLocation = str3;
        this.mCurProfile = file;
    }

    @Nullable
    private DeviceProfileWriter addMetadata(DexProfileData[] dexProfileDataArr, byte[] bArr) {
        InputStream openStreamFromAssets;
        try {
            openStreamFromAssets = openStreamFromAssets(this.mAssetManager, this.mProfileMetaSourceLocation);
        } catch (FileNotFoundException e10) {
            this.mDiagnostics.onResultReceived(9, e10);
        } catch (IOException e11) {
            this.mDiagnostics.onResultReceived(7, e11);
        } catch (IllegalStateException e12) {
            this.mProfile = null;
            this.mDiagnostics.onResultReceived(8, e12);
        }
        if (openStreamFromAssets != null) {
            try {
                this.mProfile = ProfileTranscoder.readMeta(openStreamFromAssets, ProfileTranscoder.readHeader(openStreamFromAssets, ProfileTranscoder.MAGIC_PROFM), bArr, dexProfileDataArr);
                openStreamFromAssets.close();
                return this;
            } catch (Throwable th2) {
                try {
                    openStreamFromAssets.close();
                } catch (Throwable th3) {
                    th2.addSuppressed(th3);
                }
                throw th2;
            }
        }
        if (openStreamFromAssets != null) {
            openStreamFromAssets.close();
        }
        return null;
    }

    private void assertDeviceAllowsProfileInstallerAotWritesCalled() {
        if (this.mDeviceSupportsAotProfile) {
            return;
        }
        throw new IllegalStateException("This device doesn't support aot. Did you call deviceSupportsAotProfile()?");
    }

    @Nullable
    private static byte[] desiredVersion() {
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 31) {
            return ProfileVersion.V015_S;
        }
        switch (i10) {
            case 24:
            case 25:
                return ProfileVersion.V001_N;
            case 26:
                return ProfileVersion.V005_O;
            case 27:
                return ProfileVersion.V009_O_MR1;
            case 28:
            case 29:
            case 30:
                return ProfileVersion.V010_P;
            default:
                return null;
        }
    }

    @Nullable
    private InputStream getProfileInputStream(AssetManager assetManager) {
        try {
            return openStreamFromAssets(assetManager, this.mProfileSourceLocation);
        } catch (FileNotFoundException e10) {
            this.mDiagnostics.onResultReceived(6, e10);
            return null;
        } catch (IOException e11) {
            this.mDiagnostics.onResultReceived(7, e11);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$result$0(int i10, Object obj) {
        this.mDiagnostics.onResultReceived(i10, obj);
    }

    @Nullable
    private InputStream openStreamFromAssets(AssetManager assetManager, String str) throws IOException {
        try {
            return assetManager.openFd(str).createInputStream();
        } catch (FileNotFoundException e10) {
            String message = e10.getMessage();
            if (message != null && message.contains("compressed")) {
                this.mDiagnostics.onDiagnosticReceived(5, null);
            }
            return null;
        }
    }

    @Nullable
    private DexProfileData[] readProfileInternal(InputStream inputStream) {
        try {
            try {
                try {
                    try {
                        DexProfileData[] readProfile = ProfileTranscoder.readProfile(inputStream, ProfileTranscoder.readHeader(inputStream, ProfileTranscoder.MAGIC_PROF), this.mApkName);
                        try {
                            inputStream.close();
                            return readProfile;
                        } catch (IOException e10) {
                            this.mDiagnostics.onResultReceived(7, e10);
                            return readProfile;
                        }
                    } catch (IOException e11) {
                        this.mDiagnostics.onResultReceived(7, e11);
                        return null;
                    }
                } catch (IllegalStateException e12) {
                    this.mDiagnostics.onResultReceived(8, e12);
                    inputStream.close();
                    return null;
                }
            } catch (IOException e13) {
                this.mDiagnostics.onResultReceived(7, e13);
                inputStream.close();
                return null;
            }
        } catch (Throwable th2) {
            try {
                inputStream.close();
            } catch (IOException e14) {
                this.mDiagnostics.onResultReceived(7, e14);
            }
            throw th2;
        }
    }

    private static boolean requiresMetadata() {
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 31 || i10 == 24 || i10 == 25) {
            return true;
        }
        return false;
    }

    private void result(final int i10, @Nullable final Object obj) {
        this.mExecutor.execute(new Runnable() { // from class: androidx.profileinstaller.a
            @Override // java.lang.Runnable
            public final void run() {
                DeviceProfileWriter.this.lambda$result$0(i10, obj);
            }
        });
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public boolean deviceAllowsProfileInstallerAotWrites() {
        if (this.mDesiredVersion == null) {
            result(3, Integer.valueOf(Build.VERSION.SDK_INT));
            return false;
        }
        if (this.mCurProfile.exists()) {
            if (!this.mCurProfile.canWrite()) {
                result(4, null);
                return false;
            }
        } else {
            try {
                if (!this.mCurProfile.createNewFile()) {
                    result(4, null);
                    return false;
                }
            } catch (IOException unused) {
                result(4, null);
                return false;
            }
        }
        this.mDeviceSupportsAotProfile = true;
        return true;
    }

    @NonNull
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public DeviceProfileWriter read() {
        DeviceProfileWriter addMetadata;
        assertDeviceAllowsProfileInstallerAotWritesCalled();
        if (this.mDesiredVersion == null) {
            return this;
        }
        InputStream profileInputStream = getProfileInputStream(this.mAssetManager);
        if (profileInputStream != null) {
            this.mProfile = readProfileInternal(profileInputStream);
        }
        DexProfileData[] dexProfileDataArr = this.mProfile;
        if (dexProfileDataArr != null && requiresMetadata() && (addMetadata = addMetadata(dexProfileDataArr, this.mDesiredVersion)) != null) {
            return addMetadata;
        }
        return this;
    }

    @NonNull
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public DeviceProfileWriter transcodeIfNeeded() {
        ByteArrayOutputStream byteArrayOutputStream;
        DexProfileData[] dexProfileDataArr = this.mProfile;
        byte[] bArr = this.mDesiredVersion;
        if (dexProfileDataArr != null && bArr != null) {
            assertDeviceAllowsProfileInstallerAotWritesCalled();
            try {
                byteArrayOutputStream = new ByteArrayOutputStream();
                try {
                    ProfileTranscoder.writeHeader(byteArrayOutputStream, bArr);
                } catch (Throwable th2) {
                    try {
                        byteArrayOutputStream.close();
                    } catch (Throwable th3) {
                        th2.addSuppressed(th3);
                    }
                    throw th2;
                }
            } catch (IOException e10) {
                this.mDiagnostics.onResultReceived(7, e10);
            } catch (IllegalStateException e11) {
                this.mDiagnostics.onResultReceived(8, e11);
            }
            if (!ProfileTranscoder.transcodeAndWriteBody(byteArrayOutputStream, bArr, dexProfileDataArr)) {
                this.mDiagnostics.onResultReceived(5, null);
                this.mProfile = null;
                byteArrayOutputStream.close();
                return this;
            }
            this.mTranscodedProfile = byteArrayOutputStream.toByteArray();
            byteArrayOutputStream.close();
            this.mProfile = null;
        }
        return this;
    }

    /* JADX WARN: Type inference failed for: r2v0, types: [byte[], androidx.profileinstaller.DexProfileData[]] */
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public boolean write() {
        byte[] bArr = this.mTranscodedProfile;
        if (bArr == null) {
            return false;
        }
        assertDeviceAllowsProfileInstallerAotWritesCalled();
        try {
            try {
                ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
                try {
                    FileOutputStream fileOutputStream = new FileOutputStream(this.mCurProfile);
                    FileChannel channel = fileOutputStream.getChannel();
                    try {
                        FileLock tryLock = channel.tryLock();
                        Encoding.writeAll(byteArrayInputStream, fileOutputStream, tryLock);
                        result(1, null);
                        if (tryLock != null) {
                            tryLock.close();
                        }
                        channel.close();
                        fileOutputStream.close();
                        byteArrayInputStream.close();
                        return true;
                    } catch (Throwable th2) {
                        if (channel != null) {
                            try {
                                channel.close();
                            } catch (Throwable th3) {
                                th2.addSuppressed(th3);
                            }
                        }
                        throw th2;
                    }
                } catch (Throwable th4) {
                    try {
                        byteArrayInputStream.close();
                    } catch (Throwable th5) {
                        th4.addSuppressed(th5);
                    }
                    throw th4;
                }
            } catch (FileNotFoundException e10) {
                result(6, e10);
                return false;
            } catch (IOException e11) {
                result(7, e11);
                return false;
            }
        } finally {
            this.mTranscodedProfile = null;
            this.mProfile = null;
        }
    }
}
