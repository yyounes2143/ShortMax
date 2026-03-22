package com.ss.ttvideoengine;

import com.bytedance.vcloud.cacheModule.CacheModule;
import com.bytedance.vcloud.cacheModule.PlayTaskKeyManager;
import com.bytedance.vcloud.cacheModule.PlaylistLoader;
import com.bytedance.vcloud.cacheModule.PlaylistLoaderManager;
import com.bytedance.vcloud.cacheModule.PreConnectTaskManager;
import com.bytedance.vcloud.cacheModule.info.MasterPlaylist;
import com.ss.ttm.player.MediaPlayer;
import com.ss.ttvideoengine.TTVideoEngineMasterPlaylist;
import com.ss.ttvideoengine.TTVideoEnginePreloadHLSChooseUrlCallback;
import com.ss.ttvideoengine.utils.TTVideoEngineLog;
import java.util.LinkedList;
import java.util.List;
/* loaded from: classes6.dex */
public class TTVideoEngineAdapter {
    private static final String TAG = "TTVideoEngineAdapter";
    private static TTVideoEnginePreloadHLSChooseUrlCallback hlsChooseUrlCallback = null;
    private static boolean mHasRegisterHlsProxyProto = false;

    public static TTVideoEngineMasterPlaylist convert(MasterPlaylist masterPlaylist) {
        if (masterPlaylist == null) {
            return null;
        }
        TTVideoEngineMasterPlaylist tTVideoEngineMasterPlaylist = new TTVideoEngineMasterPlaylist();
        MasterPlaylist.VariantStream[] variantStreamArr = masterPlaylist.mVariantStreams;
        if (variantStreamArr != null && variantStreamArr.length > 0) {
            int length = variantStreamArr.length;
            tTVideoEngineMasterPlaylist.variantStreams = new TTVideoEngineMasterPlaylist.TTVideoEngineVariantStream[length];
            for (int i10 = 0; i10 < length; i10++) {
                MasterPlaylist.VariantStream variantStream = masterPlaylist.mVariantStreams[i10];
                TTVideoEngineMasterPlaylist.TTVideoEngineVariantStream tTVideoEngineVariantStream = new TTVideoEngineMasterPlaylist.TTVideoEngineVariantStream();
                tTVideoEngineVariantStream.audioGroupId = variantStream.mAudioGroupId;
                tTVideoEngineVariantStream.videoGroupId = variantStream.mVideoGroupId;
                tTVideoEngineVariantStream.programId = (int) variantStream.mProgramId;
                tTVideoEngineVariantStream.bandwidth = (int) variantStream.mBandWidth;
                tTVideoEngineVariantStream.averageBandwidth = (int) variantStream.mAverageBandWidth;
                tTVideoEngineVariantStream.codecs = variantStream.mCodecs;
                tTVideoEngineVariantStream.closedCaptionsGroupId = variantStream.mClosedCaptionsGroupId;
                tTVideoEngineVariantStream.frameRate = variantStream.mFrameRate;
                tTVideoEngineVariantStream.hdcpLevel = variantStream.mHDCPLevel;
                tTVideoEngineVariantStream.resolution = variantStream.mResolution;
                tTVideoEngineVariantStream.subtitleGroupId = variantStream.mSubtitleGroupId;
                tTVideoEngineVariantStream.uri = variantStream.mUri;
                tTVideoEngineMasterPlaylist.variantStreams[i10] = tTVideoEngineVariantStream;
            }
        }
        MasterPlaylist.Rendition[] renditionArr = masterPlaylist.mRenditions;
        if (renditionArr != null && renditionArr.length > 0) {
            int length2 = renditionArr.length;
            tTVideoEngineMasterPlaylist.renditions = new TTVideoEngineMasterPlaylist.TTVideoEngineRendition[length2];
            for (int i11 = 0; i11 < length2; i11++) {
                MasterPlaylist.Rendition rendition = masterPlaylist.mRenditions[i11];
                TTVideoEngineMasterPlaylist.TTVideoEngineRendition tTVideoEngineRendition = new TTVideoEngineMasterPlaylist.TTVideoEngineRendition();
                tTVideoEngineRendition.assocLanguage = rendition.mAssocLanguage;
                tTVideoEngineRendition.autoSelect = rendition.mAutoSelect;
                tTVideoEngineRendition.characteristics = rendition.mCharacteristics;
                tTVideoEngineRendition.channels = rendition.mChannels;
                tTVideoEngineRendition.forced = rendition.mForced;
                tTVideoEngineRendition.groupId = rendition.mGroupId;
                tTVideoEngineRendition.inStreamId = rendition.mInStreamId;
                tTVideoEngineRendition.isDefault = rendition.mDefault;
                tTVideoEngineRendition.language = rendition.mLanguage;
                tTVideoEngineRendition.name = rendition.mName;
                tTVideoEngineRendition.type = rendition.mType;
                tTVideoEngineRendition.uri = rendition.mUri;
                tTVideoEngineMasterPlaylist.renditions[i11] = tTVideoEngineRendition;
            }
        }
        MasterPlaylist.SessionKey[] sessionKeyArr = masterPlaylist.mSessionKeys;
        if (sessionKeyArr != null && sessionKeyArr.length > 0) {
            int length3 = sessionKeyArr.length;
            tTVideoEngineMasterPlaylist.sessionKeys = new TTVideoEngineMasterPlaylist.TTVideoEngineSessionKey[length3];
            for (int i12 = 0; i12 < length3; i12++) {
                MasterPlaylist.SessionKey sessionKey = masterPlaylist.mSessionKeys[i12];
                TTVideoEngineMasterPlaylist.TTVideoEngineSessionKey tTVideoEngineSessionKey = new TTVideoEngineMasterPlaylist.TTVideoEngineSessionKey();
                tTVideoEngineSessionKey.method = sessionKey.mMethod;
                tTVideoEngineSessionKey.uri = sessionKey.mUri;
                tTVideoEngineSessionKey.keyFormat = sessionKey.mKeyFormat;
                tTVideoEngineSessionKey.keyFormatVersions = sessionKey.mKeyFormatVersions;
                tTVideoEngineSessionKey.IV = sessionKey.mIV;
                tTVideoEngineMasterPlaylist.sessionKeys[i12] = tTVideoEngineSessionKey;
            }
        }
        MasterPlaylist.SessionData[] sessionDataArr = masterPlaylist.mSessionDatas;
        if (sessionDataArr != null && sessionDataArr.length > 0) {
            int length4 = sessionDataArr.length;
            tTVideoEngineMasterPlaylist.sessionDatas = new TTVideoEngineMasterPlaylist.TTVideoEngineSessionData[length4];
            for (int i13 = 0; i13 < length4; i13++) {
                MasterPlaylist.SessionData sessionData = masterPlaylist.mSessionDatas[i13];
                TTVideoEngineMasterPlaylist.TTVideoEngineSessionData tTVideoEngineSessionData = new TTVideoEngineMasterPlaylist.TTVideoEngineSessionData();
                tTVideoEngineSessionData.dataId = sessionData.mDataId;
                tTVideoEngineSessionData.value = sessionData.mValue;
                tTVideoEngineSessionData.uri = sessionData.mUri;
                tTVideoEngineSessionData.language = sessionData.mLanguage;
                tTVideoEngineMasterPlaylist.sessionDatas[i13] = tTVideoEngineSessionData;
            }
        }
        MasterPlaylist.IFrameStream[] iFrameStreamArr = masterPlaylist.mIFrameStreams;
        if (iFrameStreamArr != null && iFrameStreamArr.length > 0) {
            int length5 = iFrameStreamArr.length;
            tTVideoEngineMasterPlaylist.iFrameStreams = new TTVideoEngineMasterPlaylist.TTVideoEngineIFrameStream[length5];
            for (int i14 = 0; i14 < length5; i14++) {
                MasterPlaylist.IFrameStream iFrameStream = masterPlaylist.mIFrameStreams[i14];
                TTVideoEngineMasterPlaylist.TTVideoEngineIFrameStream tTVideoEngineIFrameStream = new TTVideoEngineMasterPlaylist.TTVideoEngineIFrameStream();
                tTVideoEngineIFrameStream.codecs = iFrameStream.mCodecs;
                tTVideoEngineIFrameStream.resolution = iFrameStream.mResolution;
                tTVideoEngineIFrameStream.HDCPLevel = iFrameStream.mHDCPLevel;
                tTVideoEngineIFrameStream.bandWidth = iFrameStream.mBandWidth;
                tTVideoEngineIFrameStream.averageBandWidth = iFrameStream.mAverageBandWidth;
                tTVideoEngineIFrameStream.programId = iFrameStream.mProgramId;
                tTVideoEngineIFrameStream.uri = iFrameStream.mUri;
                tTVideoEngineMasterPlaylist.iFrameStreams[i14] = tTVideoEngineIFrameStream;
            }
        }
        return tTVideoEngineMasterPlaylist;
    }

    public static boolean isHlsProxyEnabled() {
        if (DataLoaderHelper.getDataLoader().getIntValue(DataLoaderHelper.DATALOADER_KEY_ENABLE_HLS_PROXY) == 0) {
            TTVideoEngineLog.w(TAG, "DATALOADER_KEY_ENABLE_HLS_PROXY not enabled");
            return false;
        } else if (CacheModule.getHlsProxyProtocol() == -1) {
            TTVideoEngineLog.w(TAG, "get HlsProxyHandle: -1 ");
            return false;
        } else if (!InfoWrapper.isHlsProxyEnable()) {
            return false;
        } else {
            return true;
        }
    }

    public static void removePlayTask(String str) {
        PlayTaskKeyManager.getInstance().removePlayTask(str);
    }

    public static void removePreConnectTask(String str) {
        PreConnectTaskManager.getInstance().erasePreConnectTask(str);
    }

    public static void setPreloadChooseUrlCallback(TTVideoEnginePreloadHLSChooseUrlCallback tTVideoEnginePreloadHLSChooseUrlCallback) {
        hlsChooseUrlCallback = tTVideoEnginePreloadHLSChooseUrlCallback;
        if (tTVideoEnginePreloadHLSChooseUrlCallback == null) {
            PlaylistLoaderManager.getInstance().setOnMasterPlaylistListener(null);
        } else {
            PlaylistLoaderManager.getInstance().setOnMasterPlaylistListener(new PlaylistLoader.OnMasterPlaylistListener() { // from class: com.ss.ttvideoengine.TTVideoEngineAdapter.1
                @Override // com.bytedance.vcloud.cacheModule.PlaylistLoader.OnMasterPlaylistListener
                public List<PlaylistLoader.PreloadUrlInfo> onSelectPreloadUrls(MasterPlaylist masterPlaylist) {
                    List<TTVideoEnginePreloadHLSChooseUrlCallback.TTVideoEnginePreloadUrlInfo> chooseUrls = TTVideoEngineAdapter.hlsChooseUrlCallback.chooseUrls(TTVideoEngineAdapter.convert(masterPlaylist));
                    if (chooseUrls != null && !chooseUrls.isEmpty()) {
                        LinkedList linkedList = new LinkedList();
                        for (TTVideoEnginePreloadHLSChooseUrlCallback.TTVideoEnginePreloadUrlInfo tTVideoEnginePreloadUrlInfo : chooseUrls) {
                            PlaylistLoader.PreloadUrlInfo preloadUrlInfo = new PlaylistLoader.PreloadUrlInfo();
                            preloadUrlInfo.mPreloadSize = Integer.valueOf(tTVideoEnginePreloadUrlInfo.preloadSize);
                            preloadUrlInfo.mUrl = tTVideoEnginePreloadUrlInfo.uri;
                            linkedList.add(preloadUrlInfo);
                        }
                        return linkedList;
                    }
                    return null;
                }
            });
        }
    }

    public static void tryRegisterHlsProxyHandle(MediaPlayer mediaPlayer) {
        if (DataLoaderHelper.getDataLoader().getIntValue(DataLoaderHelper.DATALOADER_KEY_ENABLE_HLS_PROXY) == 0) {
            mHasRegisterHlsProxyProto = false;
            TTVideoEngineLog.i(TAG, "tryRegisterHlsProxyHandle, dataloader hlsproxy disabled:");
            return;
        }
        String str = TAG;
        TTVideoEngineLog.i(str, "tryRegisterHlsProxyHandle, player type:" + mediaPlayer.getPlayerType());
        if (!mHasRegisterHlsProxyProto && mediaPlayer.getPlayerType() == 1) {
            long hlsProxyProtocol = CacheModule.getHlsProxyProtocol();
            if (hlsProxyProtocol != -1) {
                mediaPlayer.setLongOption(502, hlsProxyProtocol);
                mHasRegisterHlsProxyProto = true;
            }
            TTVideoEngineLog.i(str, "get HlsProxyHandle: " + hlsProxyProtocol);
        }
    }
}
